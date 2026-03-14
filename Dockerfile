FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost

# Shadowsocks + WS protokolü. Şifreleme: chacha20-ietf-poly1305, Şifre: roblox2026
# Path mutlaka belirtilmeli.
CMD ["/usr/bin/gost", "-L", "ss2+ws://chacha20-ietf-poly1305:roblox2026@:10000?path=/ws"]
