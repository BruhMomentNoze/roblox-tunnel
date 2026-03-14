FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# v2ray-plugin mantığı: ws üzerinden Shadowsocks
CMD ["/usr/bin/gost", "-L=ss+ws://aes-256-gcm:123456@:10000?path=/ws"]
