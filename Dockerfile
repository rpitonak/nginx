FROM asamalik/module-nginx-master

ADD files/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD nginx



