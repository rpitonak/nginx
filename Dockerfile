FROM koscicz/nginx-dummy:latest

ADD files/nginx.conf /etc/nginx/nginx.conf
ADD files/run.sh /run.sh
CMD chmod +x /run.sh

CMD /bin/sh run.sh



