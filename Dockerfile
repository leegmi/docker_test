FROM ubuntu:16.04
MAINTAINER korea lee <lee@korea.com>
RUN apt-get update && apt-get install -y -q nginx
RUN echo "/ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/ngins
VOLUME ["data", "/etc/nginx/site-enabled", "/var/log/nginx"]
WORKDIR /etc/nginx
CMD ["nginx"]
EXPOSE 80
EXPOSE 443
