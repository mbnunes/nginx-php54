FROM ubuntu:12.04

RUN apt-get update && apt-get upgrade -y && apt-get install python-software-properties -y && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y php5.4 php5.4-fpm php5.4-mysql nginx-full

EXPOSE 80 443

ENTRYPOINT [ "nginx -D" ]