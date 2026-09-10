# apiforanysite.com, design

The public site for API for Any Site (the Chrome extension + native host, repo `apiforanysite`). Binding decisions, one dated round per conversation round. Copy sources: the extension's own first-run headline and the Chrome Web Store listing draft; the site restates them, it does not invent claims.

## r1, 2026-09-10: jobs and direction

- **Jobs of the home page (Sam)**: install the extension (one Chrome Web Store button), get it in ten seconds (headline + why not let the agent drive the page), trust it (what a kit can and cannot do). Held: connect-your-agent (the extension's first-run screen walks it), a kit catalog page, a privacy page.
- **Direction: Terminal** (Sam, of A Terminal / B Manual / C Stark in `design/mocks/site-directions-r1.html`). The extension's options page skin carried to the site: `#0f1115` ground, bundled JetBrains Mono as the only family, one signal green `#5ee0a0` for the wordmark dots, the headline phrase and the single CTA, hairline rules, no cards. Site and extension look like one thing, which matters because the options page is the first screen after "Add to Chrome".
- **Wordmark**: `api·for·any·site`, lowercase mono, green middle dots, same as the extension header.
- **One loud CTA**: "Add to Chrome" (green fill). The bar carries only a quiet github link. The store URL is derived from the extension's fixed manifest key (id `mlknbfgdblbbdoomplebifjopkoflcdg`) and will 404 until the listing is published.
- **The proof section is a terminal window**, two columns: "Without a kit" (the agent's page-driving loop as a step list) beside "With the LinkedIn kit" (one `list_invitations()` call and its JSON). People in the JSON are fictional (Ada Quill, Tomas Reyes). No made-up token counts or timings anywhere on the page.
- **Trust section** = the listing's "What a kit can and cannot do", five hairline rows, claim left, one-sentence detail right. No icon grid, no numbered step strip.
- **Phone (390px)**: terminal columns stack, trust rows stack, headline 30px. No horizontal scroll (measured).
- **Stack**: plain static HTML served by Caddy on Railway (dev-stack's plain-static pattern; no form, no database). `og-image.png` is rendered from `design/og.html` with arc-cli at 1200x630; re-render it when the headline changes.
