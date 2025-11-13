@echo off

REM Use Java 17+
set JENA_HOME=C:\java\apache-jena-5.6.0
set PATH=%PATH%;%JENA_HOME%\bat

cd /d "%~dp0"

REM === Create timestamp (YYYY-MM-DD_HH-MM-SS) ===
for /f "tokens=1-4 delims=/- " %%a in ("%date%") do (
    set YYYY=%%d
    set MM=%%b
    set DD=%%c
)
for /f "tokens=1-3 delims=:.," %%a in ("%time%") do (
    set HH=%%a
    set Min=%%b
    set Sec=%%c
)

REM Remove any leading spaces or zero-pad hour if needed
set HH=%HH: =0%

REM === Construct timestamped log file name ===
set LOGFILE=validate_examples.%YYYY%%MM%%DD%.%HH%%Min%.log

echo === Validation run started %date% %time% === >> "%LOGFILE%"

REM Loop through all .ttl files
for /r "../examples" %%f in (*.ttl) do (
    echo. >> "%LOGFILE%"
    echo. >> "%LOGFILE%"
    echo - Valideer %%~f >> "%LOGFILE%"
    shacl validate -shapes pico_shacl.ttl -data "%%~f" >> "%LOGFILE%" 2>&1
)

echo. >> "%LOGFILE%"
echo. >> "%LOGFILE%"
echo === Validation completed %date% %time% === >> "%LOGFILE%"
