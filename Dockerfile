FROM alpine
MAINTAINER Vijay Vaidyanathan <vijay@MyEmailForever.com>

EXPOSE 80

CMD while true; do \
      echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\nThis is a happy day - $(date)\r\n\r\n" | nc -v -l -p 80; \
   done

