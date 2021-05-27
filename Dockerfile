FROM ubuntu
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils
RUN apt-get clean
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
