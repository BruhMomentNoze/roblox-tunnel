FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Protokol yazmıyoruz, direkt portu dinletiyoruz
CMD ["/usr/bin/gost", "-L=:10000"]
