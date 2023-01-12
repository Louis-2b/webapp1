FROM debian
MAINTAINER steohane TCHANGA (stephanetchanga2b@gmail.com)
RUN apt-get update
RUN UBUNTU_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 8080
#ADD Basic-Website-using-HTML-CSS/ /var/www/html
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/arvind37/Basic-Website-using-HTML-CSS.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

