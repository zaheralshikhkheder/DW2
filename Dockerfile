FROM ubuntu
RUN apt update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt install -y apache2
RUN apt install -y php
COPY html /var/www/html/
RUN date> /var/www/html/buildtime.txt
WORKDIR /var/www/html/
EXPOSE 81/tcp
CMD service apache2 start && bash