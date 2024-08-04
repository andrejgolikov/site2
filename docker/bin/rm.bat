@ECHO off

CALL %~dp0initialize.bat

docker rm -v %DOCKER_CONTAINERS_BASE_NAME%_nginx
