@ECHO off

@REM Путь к файлу настроек
SET ENV_FILE_PATH=%~dp0..\.env

@REM Проверяем наличие файла настроек
IF not EXIST %ENV_FILE_PATH% (
    ECHO File .env not found. Check that you copy .env.example file to .env.
    EXIT 2;
)

@REM Считываем настройки из .env файла в переменные с соответствующими именами
FOR /F "eol=# tokens=*" %%i IN (%ENV_FILE_PATH%) DO SET %%i
