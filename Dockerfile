FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
EXPOSE 80
