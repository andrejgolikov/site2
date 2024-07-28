@ECHO off

docker run ^
    --name localhost.site2.nginx ^
    -p 8080:80 ^
    -v %~dp0\..\..\source:/usr/share/nginx/html ^
    -v %~dp0\..\..\docker\nginx\config\nginx.conf:/etc/nginx/nginx.conf:ro ^
    -v %~dp0\..\..\docker\nginx\log:/var/log/nginx ^
    -d ^
    nginx
