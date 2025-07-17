FROM nginx:alpine

RUN apk add --no-cache keepalived iputils curl

COPY keepalived.conf /etc/keepalived/keepalived.conf
COPY check_nginx.sh /etc/keepalived/check_nginx.sh
COPY index.html /usr/share/nginx/html/index.html

RUN chmod +x /etc/keepalived/check_nginx.sh

CMD sh -c "keepalived && nginx -g 'daemon off;'"
