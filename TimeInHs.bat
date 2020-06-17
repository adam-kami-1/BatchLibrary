@echo off

REM ============================================================================
:TimeInHs
REM ===========
REM %1 - Time in format: HH:MM:SS,hs
REM Convert time into hundredths of a second
REM Result returned in %ERRORLEVEL%
REM ===========
setLocal EnableDelayedExpansion
if "%~2" == "" (
  set T=%~1
) else (
  set T=%~1,%~2
)
for /f "tokens=1,2,3,4 delims=:.," %%A in ("%T%") do (
  set HH=0%%A
  set MM=0%%B
  set SS=0%%C
  set hs=00%%D
)
set /a "HH=10 * %HH:~-2,1% + %HH:~-1,1%"
set /a "MM=10 * %MM:~-2,1% + %MM:~-1,1%"
set /a "SS=10 * %SS:~-2,1% + %SS:~-1,1%"
set /a "hs=10 * %hs:~-2,1% + %hs:~-1,1%"
set /a "$value=(((%HH% * 60) + %MM%) * 60 + %SS%) * 100 + %hs%"
endLocal & exit /b %$value%
REM ============================================================================


