FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Metodu aes-128-gcm yapalım, hem hafif hem hatasızdır
CMD ["/usr/bin/gost", "-L=ss+ws://aes-128-gcm:123456@:10000?path=/ws"]
