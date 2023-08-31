FROM debian:bookworm-backports

RUN apt-get update -y && apt-get install nginx -y \
		      && apt-get install vim -y   \
		      && apt-get install openssl  
RUN mkdir -p /etc/ssl/
RUN openssl req -x509 -days 365 -nodes -newkey rsa:4096 \
	-keyout /etc/ssl/nginx.key \
	-out /etc/ssl/nginx.crt -sha256 -subj "/CN=MA"
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
RUN mv /var/www/html/index.nginx-debian.html /var/www/html/index.html

#EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
