FROM asamalik/module-nginx-master

# Labels
LABEL name="nginx" \
    summary="Nginx is a web server." \
    description="Nginx is a web server, which can also be used as a reverse proxy, load balancer and HTTP cache." \
    version="0" \
    release="1" \
    atomic.has_install_files="true"

# Add neccessary configuration files
COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/service.template /exports/hostfs/usr/lib/systemd/system/nginx-container.service

RUN mkdir -p /exports/hostfs/{usr/share,etc} && \
    cp -ar /usr/share/nginx /exports/hostfs/usr/share/ && \
    cp -ar /etc/nginx /exports/hostfs/etc

# Export port for nginx frontend
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]
