FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Hem HTTP hem SOCKS5 destekleyen hibrit mod
CMD ["/usr/bin/gost", "-L=socks5://:10000?udp=true", "-L=http://:10000"]
