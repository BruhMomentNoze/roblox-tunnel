FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Sadece tek bir protokol ve tek port kullanıyoruz, karmaşaya gerek yok
CMD ["/usr/bin/gost", "-L=socks5://:10000?udp=true"]
