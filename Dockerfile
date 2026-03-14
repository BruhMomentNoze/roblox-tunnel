FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Gelen TCP trafiğini kendi içine döndürerek 'açık' tutuyoruz
CMD ["/usr/bin/gost", "-L=tcp://:10000/127.0.0.1:10000"]
