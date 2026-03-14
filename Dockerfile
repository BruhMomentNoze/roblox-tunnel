FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# En basit relay modu: Şifreleme falan eklemiyoruz ki paketler bozulmasın
CMD ["/usr/bin/gost", "-L=tcp://:10000"]
