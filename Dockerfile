FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
CMD ["/usr/bin/gost", "-L=ws://:10000"]
