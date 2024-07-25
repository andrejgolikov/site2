@ECHO off

docker run --name localhost.site2.nginx -p 8080:80 -v %~dp0\..\source:/usr/share/nginx/html -d nginx
