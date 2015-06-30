# From => https://github.com/GoogleCloudPlatform/nginx-ssl-proxy/blob/master/Dockerfile
FROM        nginx:latest

MAINTAINER  tdeheurles@gmail.com

RUN         rm /etc/nginx/conf.d/*.conf

WORKDIR     /usr/src

COPY        start.sh      /usr/src/
COPY        nginx.conf    /etc/nginx/
COPY        proxy.conf    /etc/nginx/conf.d/

ENTRYPOINT  ./start.sh
