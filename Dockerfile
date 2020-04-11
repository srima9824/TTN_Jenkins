FROM ubuntu
MAINTAINER Srima Pal
RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install apt-utils vim wget curl net-tools -y
ADD default.conf /etc/nginx/conf.d/

EXPOSE 80
CMD [ "nginx", "-g", "daemon off;"  ]                                                                                                                                                                                    
