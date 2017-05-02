FROM asamalik/module-nginx-master

# Labels
LABEL name="nginx" \
	summary="Nginx is a web server." \
	description="Nginx is a web server, which can also be used as a reverse proxy, load balancer and HTTP cache." \
	version="0" \
	release="1"

# Add neccessary configuration files
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/nginx.conf /exports/etc/nginx/nginx.conf
COPY files/service.template /exports/service.template

# Export port for nginx frontend
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]



