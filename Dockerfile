FROM php:apache
WORKDIR /var/www/html
COPY ./public-html/ /var/www/html
VOLUME /var/www/html
VOLUME /var/www/html/cron:rw

ENV VIRTUAL_HOST bbn.aws3.yongbuzhixi.com
ENV LETSENCRYPT_HOST bbn.aws3.yongbuzhixi.com
ENV LETSENCRYPT_EMAIL=dale.tel@139.com

EXPOSE 80
CMD ["apache2-foreground"]
