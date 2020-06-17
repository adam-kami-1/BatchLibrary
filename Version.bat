@echo off


REM ============================================================================
:Version
REM ===========
setlocal
REM %1 - Result variable name
set RESULT=%1
if [%RESULT%] == [] set RESULT=VERSION
REM ===========
for /f "tokens=1,2,3,4,5 delims=. " %%A in ('ver') do (
  set MAJOR=%%D
  set MINOR=%%E
)
endlocal & set %RESULT%=%MAJOR%.%MINOR% & set %RESULT%_MAJOR=%MAJOR% & set %RESULT%_MINOR=%MINOR% & exit /b %MAJOR%
