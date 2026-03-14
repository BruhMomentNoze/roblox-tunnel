FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost

# Sadece socks5+ws yaparsan şifreleme uyuşmazlığı çıkar. 
# En temizi Shadowsocks üzerinden WebSocket (ss2+ws).
CMD ["/usr/bin/gost", "-L", "ss2+ws://chacha20-ietf-poly1305:roblox2026@:10000?path=/ws"]
