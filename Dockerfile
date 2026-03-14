FROM alpine:latest
RUN apk add --no-cache ca-certificates
COPY gost /usr/bin/gost
RUN chmod +x /usr/bin/gost
# Render'a diyoruz ki: "Sana gelen Websocket paketlerini al ve içindeki veriyi aç."
CMD ["/usr/bin/gost", "-L=mws://:10000"]
