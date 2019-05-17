FROM nginx
RUN sed -i -e 's/#gzip/gzip/g' /etc/nginx/nginx.conf
COPY ./public /usr/share/nginx/html
