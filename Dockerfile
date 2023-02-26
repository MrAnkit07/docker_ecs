FROM ubuntu
RUN apt-get update -y \
    && apt-get install nginx -y 
     
COPY . /var/www/html
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
