FROM docker.io/peaceiris/hugo:latest-full AS builder
RUN hugo version
WORKDIR /src
COPY . .
RUN hugo --gc && ls -la /src/public

FROM docker.io/caddy:2.10.2
COPY --from=builder /src/public /public
CMD ["caddy", "file-server", "--browse", "--root", "/public"]
