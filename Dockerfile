FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost

# Hem SOCKS5 hem WebSocket hem de path desteğini tam tanımlıyoruz.
# Eşittir (=) işaretini kaldırıp daha temiz bir komut yazıyoruz.
CMD ["/usr/bin/gost", "-L", "socks5+ws://:10000?path=/ws&lossless=true"]
