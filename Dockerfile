FROM asamalik/module-nginx-master

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/nginx.conf /exports/etc/nginx/nginx.conf
COPY files/service.template /exports/service.template

EXPOSE 80

CMD nginx



