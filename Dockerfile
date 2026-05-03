FROM nginx:alpine
COPY election-guide.html /usr/share/nginx/html/index.html
# Tell nginx to listen on whatever port Google Cloud gives it (usually 8080)
CMD sed -i -e 's/listen  *80;/listen '"$PORT"';/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
