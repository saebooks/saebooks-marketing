// Headless layout regression guard for saebooks.com.au.
// Loads pages at the grav origin (bypassing Cloudflare) at desktop + mobile widths
// and fails (exit 1) on the defect classes that have actually bitten this site:
//   - horizontal overflow  (page "skewed to the right")
//   - an image whose right edge spills past the viewport (e.g. a screenshot
//     rendering at intrinsic width because its CSS went missing)
//   - a .shot-frame light/dark pair not toggling to exactly one visible image
//   - the render-critical .shot-frame img rule absent from the loaded CSS
// Reuses the Chromium that saebooks-shotter already has installed.
import { createRequire } from 'module';
const require = createRequire('/home/sauer/projects/saebooks-shotter/');
const { chromium } = require('playwright');

const ORIGIN = process.env.ORIGIN || 'http://10.0.1.1:18008';
const HOST   = process.env.HOSTHDR || 'saebooks.com.au';
// Resolve the public vhost straight to the grav origin (bypasses Cloudflare) so
// the check sees exactly the just-deployed content. Chromium forbids overriding
// the Host header, so we map the hostname->ip:port at the resolver instead.
const { hostname: ORIGIN_IP, port: ORIGIN_PORT } = new URL(ORIGIN);
const RESOLVER = `MAP ${HOST}:80 ${ORIGIN_IP}:${ORIGIN_PORT || 80}`;
const BASE = `http://${HOST}`;
const PAGES  = (process.env.PAGES || '/,/product,/self-host').split(',');
const VIEWPORTS = [
  { name: 'desktop', width: 1536, height: 900 },
  { name: 'mobile',  width: 390,  height: 844 },
];
const TOL = 2; // px tolerance for sub-pixel rounding

const audit = () => {
  const vw = window.innerWidth;
  const docW = document.documentElement.scrollWidth;
  const blown = [...document.querySelectorAll('img')]
    .filter(i => { const r = i.getBoundingClientRect(); return r.width > 0 && r.right > vw + 4; })
    .map(i => ({ src: i.src.split('/').pop().split('?')[0], right: Math.round(i.getBoundingClientRect().right) }));
  const frames = [...document.querySelectorAll('.shot-frame')].map(f => {
    const imgs = [...f.querySelectorAll('img')];
    return { imgs: imgs.length, visible: imgs.filter(i => getComputedStyle(i).display !== 'none').length };
  });
  const badFrames = frames.filter(f => f.imgs >= 2 && f.visible !== 1).length;
  let shotFrameRuleFound = false;
  for (const ss of document.styleSheets) {
    try { for (const r of ss.cssRules) if (r.selectorText === '.shot-frame img') shotFrameRuleFound = true; } catch (e) {}
  }
  const hasShotFrames = document.querySelectorAll('.shot-frame').length > 0;
  return { vw, docW, overflow: docW - vw, blown, frames: frames.length, badFrames, hasShotFrames, shotFrameRuleFound };
};

const b = await chromium.launch({ args: ['--no-sandbox', `--host-resolver-rules=${RESOLVER}`] });
let failures = [];
for (const path of PAGES) {
  for (const vp of VIEWPORTS) {
    for (const theme of ['light', 'dark']) {
      const ctx = await b.newContext({
        viewport: { width: vp.width, height: vp.height },
        colorScheme: theme,
      });
      const p = await ctx.newPage();
      const tag = `${path} @${vp.name}/${theme}`;
      try {
        await p.goto(BASE + path, { waitUntil: 'networkidle', timeout: 45000 });
        await p.waitForTimeout(400);
        const r = await p.evaluate(audit);
        const probs = [];
        if (r.overflow > TOL) probs.push(`h-overflow ${r.overflow}px (doc ${r.docW} > vw ${r.vw})`);
        if (r.blown.length) probs.push(`img spills right: ${r.blown.map(x => x.src).join(', ')}`);
        if (r.badFrames) probs.push(`${r.badFrames} shot-frame(s) not toggling to 1 image`);
        if (r.hasShotFrames && !r.shotFrameRuleFound) probs.push(`.shot-frame img CSS rule MISSING from loaded stylesheets`);
        if (probs.length) { failures.push(`${tag}: ${probs.join('; ')}`); console.log(`  FAIL ${tag}: ${probs.join('; ')}`); }
        else console.log(`  ok   ${tag}  (frames=${r.frames}, overflow=${r.overflow}px)`);
      } catch (e) {
        failures.push(`${tag}: load error ${e.message}`);
        console.log(`  FAIL ${tag}: ${e.message}`);
      }
      await ctx.close();
    }
  }
}
await b.close();
if (failures.length) { console.error(`\nLAYOUT CHECK FAILED (${failures.length}):`); failures.forEach(f => console.error('  - ' + f)); process.exit(1); }
console.log('\nlayout check passed');
