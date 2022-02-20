
FROM caddy:builder AS builder

RUN xcaddy build \
    --with https://github.com/caddy-dns/dnspod

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
