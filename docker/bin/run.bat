@ECHO off

CALL %~dp0initialize.bat

docker run ^
    --name %DOCKER_CONTAINERS_BASE_NAME%_nginx ^
    -p %PROJECT_HTTP_PORT% ^
    -v %~dp0..\nginx\config\nginx.conf:/etc/nginx/nginx.conf:ro ^
    -v %~dp0..\nginx\config\conf.d:/etc/nginx/conf.d:ro ^
    -v %~dp0%PROJECT_FILES_DIRECTORY%:/usr/share/nginx/html:ro ^
    -v %~dp0..\nginx\log:/var/log/nginx ^
    -d ^
    nginx
