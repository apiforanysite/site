# apiforanysite-site

The one-page site at apiforanysite.com: install button, the ten-second pitch, the trust rules. Decisions in `design.md`.

## Run locally

```bash
python3 -m http.server 4335 --bind 127.0.0.1
```

## Ship

Static files served by Caddy (`Dockerfile` + `Caddyfile`), Railway auto-deploys `main`. Re-render `og-image.png` after a headline change:

```bash
cd ~/Code/CLIs/arc-cli && uv run arc shot "file://$PWD/design/og.html" og-image.png --width 1200 --height 630
```
