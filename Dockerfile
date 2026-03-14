FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Direkt SOCKS5 protokolüyle 10000 portunu açıyoruz
CMD ["/usr/bin/gost", "-L=socks5://:10000"]
