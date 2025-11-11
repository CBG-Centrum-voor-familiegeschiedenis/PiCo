@echo off

rem use Java 17+
set JENA_HOME=C:\java\apache-jena-5.6.0
set PATH=%PATH%;%JENA_HOME%\bat

cd /d "%~dp0"

REM Loop door alle bestanden in ../examples (en subdirectories)
for /r "../examples" %%f in (*.ttl) do (
    echo "- Valideer %%~f"
    shacl validate -shapes pico_shacl.ttl -data %%~f
)