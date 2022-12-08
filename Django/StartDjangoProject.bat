@echo off
set /p PROJ_NAME="Name of your project: "
django-admin startproject %PROJ_NAME%
cd %PROJ_NAME%
python -m venv %PROJ_NAME%_ENV
mkdir static
mkdir media
mkdir templates
mkdir apps
cd apps
echo Created Django project
echo -------------------------------
:loop
set /p APP_NAME="App name: "
django-admin startapp %APP_NAME%
set /p WANT_MORE="Do you want to add more apps: [Y/N]? "
if "%WANT_MORE%" == "Y" goto :loop
if not "%WANT_MORE%" == "Y" goto :exit
:exit
echo Created apps
pause
exit
