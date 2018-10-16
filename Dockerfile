FROM alpine:3.7

# Add Nginx
RUN apk update && apk add nginx

# Run in foreground
RUN apk update \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log \
    && mkdir -p /run/nginx/ && touch /run/nginx/nginx.pid
