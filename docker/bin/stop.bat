@ECHO off

CALL %~dp0initialize.bat

docker stop %DOCKER_CONTAINERS_BASE_NAME%_nginx
