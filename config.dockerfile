FROM alpine
RUN addgroup -g 1000 -S nginx \
 && adduser -u 1000 -D -S -G nginx nginx

# NGINX
RUN mkdir -p /etc/nginx/conf.d
RUN mkdir -p /etc/nginx/sites-available
RUN mkdir -p /etc/nginx/sites-enabled
WORKDIR /etc/nginx
# Configs
COPY --from=nginx:alpine /etc/nginx /etc/nginx/
COPY ./configs/nginx.conf ./nginx.conf
COPY ./configs/symfony.conf ./sites-available/default.conf
COPY ./configs/upstream.conf ./conf.d/upstream.conf
RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
RUN rm ./conf.d/default.conf
