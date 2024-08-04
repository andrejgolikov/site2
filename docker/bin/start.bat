@ECHO off

CALL %~dp0initialize.bat

docker start %DOCKER_CONTAINERS_BASE_NAME%_nginx
