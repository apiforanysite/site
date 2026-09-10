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

## r2, 2026-09-10: hero, links, CTA block, header mark

- **Headline breaks at the comma** (Sam): "An API for the web," then "even for the sites that never built one." on one line (a `nowrap` span, released on the phone). The second clause is 40 mono characters, so the headline is 36px (was 44px) to fit the 904px container.
- **Lede runs the full container width** (Sam), four lines.
- **GitHub links go to the extension repo** github.com/apiforanysite/apiforanysite with the octicon mark before "GitHub" (header, CTA caption, footer).
- **CTA block** (Sam, three steps): caption under the button, button as wide as the caption, both text-centered. One inline-flex column, 245px.
- **Header mark** (Sam, of A bare 20px / B bare 26px / C on tile / D none in `design/mocks/header-mark-r1.html`): B, the bare braces-and-dots glyph 26px tall beside the wordmark, cropped to the glyph bounds (`viewBox="22 34 84 60"`). Canonical mark: the extension's `icons/icon.svg`; the favicon is that mark on its tile.

## r3, 2026-09-10: hero animation, the race, three sections

- **Headline** (Sam): "Give ◆ Claude / an API for the web, / even for the sites that never built one." The agent name is a typed slot: the agent's monochrome mark lands first, then the name types (Claude, ChatGPT, Grok Bot in turn, LobeHub icon set paths), holds, deletes. The "Give …" line is its own row at every width so the break after the name always happens. Reduced motion or no JS: the static three-name line.
- **The race** (Sam): both terminal columns start together when the terminal scrolls into view. Left runs twelve page-driving turns over 40.7 s with a live clock, token and dollar counter (129k tokens, $1.03); right finishes at 1.4 s (1.2k tokens, $0.01). Numbers come from Anthropic's documented image-token formula (⌈w/28⌉×⌈h/28⌉, 2,691 for 1920×1080) with the conversation resent per turn and Opus 5 list prices; Sam raised the model from the leanest run and cut the on-page basis note. Both clocks are green; Claude Code's spinner (· ✢ ✳ ✶ ✻ ✽) marks the next pending step and the in-flight call. Totals rows are pinned to the bottom of both columns so they align. Replays after 6 s idle, restarts on re-entering view.
- **Header rule removed** (Sam). **Footer** links carry the octicon.
- **Below the terminal, three sections** (Sam's structure): "Examples of automations you can now run" (three asks in the user's words, each with the kit chip and the real tool names from the manifests), "Ask your agent to build an API for any site" (a small terminal: the agent writes a Hacker News kit, manifest + one tool file, installs it from this machine; Hacker News is illustrative), "Safe by design" (the listing's rules as hairline rows, plus Open source). Replaced the bare "What a kit can and cannot do" list.
- Extension repo moved to `~/Code/Personal/apiforanysite` (GitHub apiforanysite/apiforanysite); the site repo is GitHub apiforanysite/site.
