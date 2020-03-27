FROM ubuntu:14.04

RUN apt-get update && apt-get upgrade -y && apt-get install python-software-properties software-properties-common -y && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y php5 php5-fpm php5-mysql nginx-full

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]