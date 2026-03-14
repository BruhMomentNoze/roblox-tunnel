FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Metot: chacha20-ietf-poly1305 (Oyunlar için en hızlısı budur)
# Şifre: roblox123
CMD ["/usr/bin/gost", "-L=ss+ws://chacha20-ietf-poly1305:roblox123@:10000?path=/ws"]
