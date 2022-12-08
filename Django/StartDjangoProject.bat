@echo off
set /p PROJ_NAME="Jaka nazwe ma twoj projekt?: "
django-admin startproject %PROJ_NAME%
cd %PROJ_NAME%
mkdir ENV
cd ENV
python -m venv %PROJ_NAME%_ENV
cd ..
mkdir static
mkdir media
mkdir templates
mkdir apps


