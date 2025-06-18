FROM nginx 

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY cert.pem /etc/nginx/cert.pem
COPY key.pem /etc/nginx/key.pem
EXPOSE 80
EXPOSE 443

COPY test_site.conf /etc/nginx/sites-available/trrogi-test-timeweb-67d6.twc1.net

RUN ln -s /etc/nginx/sites-available/trrogi-test-timeweb-67d6.twc1.net /etc/nginx/sites-enabled/ && \
    mkdir /var/www/trrogi-test-timeweb-67d6.twc1.net/html
COPY test_site_index.html /var/www/trrogi-test-timeweb-67d6.twc1.net/html/index.html
