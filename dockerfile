### Base image is specified by FROM command in docker file #####
FROM ubuntu
## to install or to perform any task inside base image os RUN is used###
RUN apt update -y
RUN apt install git -y
RUN apt install apache2 -y
RUN apt install apache2-utils -y

COPY ./index.html /var/www/html/
COPY ./images /var/www/html

#CMD ["apache2ctl", "-D", "FOREGROUND"]

