FROM ubuntu:12.04

RUN apt-get update && apt-get upgrade && apt-get install python-software-properties && \
    add-apt-repository ppa:ondrej/php5-oldstable && \
    apt-get update && \
    apt-get install -y php5 php5-fpm php5-mysql nginx-full

EXPOSE 80 443

ENTRYPOINT [ "nginx -D" ]