FROM koscicz/nginx-dummy:latest

CMD useradd --shell /bin/sh nginx

ADD files/nginx.conf /etc/nginx/nginx.conf

CMD nginx



