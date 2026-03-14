FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# TCP dinlemesi yapıyoruz, böylece protokol seçmeye çalışmaz
CMD ["/usr/bin/gost", "-L=tcp://:10000/:7860"]
