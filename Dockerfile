FROM ebigdata/nginx:OFFICIAL-20170613
MAINTAINER AndyWu "ebd@ebd.com"
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/nginx.conf
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
ADD nginx/nginx.conf /etc/nginx/nginx.conf
ADD website/ /var/www/html/website/
EXPOSE 80
