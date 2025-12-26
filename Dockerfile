FROM ubuntu
RUN apt update
RUN apt install -y apache2 php libapache2-mod-php php-mysql
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*
WORKDIR /var/www/html
COPY ./code /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]