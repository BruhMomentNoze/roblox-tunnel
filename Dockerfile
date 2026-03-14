FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# WS (Websocket) üzerinden SOCKS5 protokolü. Şifreleme yok, hata payı sıfır.
CMD ["/usr/bin/gost", "-L=socks5+ws://:10000"]
