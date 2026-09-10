# Static site served by Caddy. Railway sets $PORT.
FROM caddy:2-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html favicon.svg og-image.png /srv/
COPY fonts /srv/fonts
