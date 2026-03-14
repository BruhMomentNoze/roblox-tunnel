FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost

# Shadowsocks (ss) protokolüne geçiyoruz. Şifreleme: aes-128-gcm, Şifre: roblox123
CMD ["/usr/bin/gost", "-L", "ss2+ws://aes-128-gcm:roblox123@:10000?path=/ws"]
