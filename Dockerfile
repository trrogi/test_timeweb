FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY cert.pem /etc/nginx/cert.pem
COPY key.pem /etc/nginx/key.pem
EXPOSE 80
EXPOSE 443
