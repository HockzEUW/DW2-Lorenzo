FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y
EXPOSE 80/tcp
COPY ./html /var/www/html/
RUN date > /var/www/html/buildtime.txt
CMD service apache2 start && bash

