@echo off


REM ============================================================================
:TimeDiff
REM ===========
REM Calculate ('Second time' - 'First time') in hundredths of a second
REM Result returned in %ERRORLEVEL%
REM ===========
REM If both parameters are in quotes:
REM %1 - First time in format: HH:MM:SS,hs
REM %2 - Second time in format: HH:MM:SS,hs
REM If both parameters are not in quotes:
REM %1 - First time (partial): HH:MM:SS
REM %2 - First time (partial): hs
REM %3 - Second time (partial): HH:MM:SS
REM %4 - Second time (partial): hs
REM At the moment we do not support only one parameter in quotes
REM ===========
setLocal
if [%~3] == [] (
  set $START=%~1
  set $STOP=%~2
) else (
  set $START=%~1,%~2
  set $STOP=%~3,%~4
)
call :TimeInHs "%$START%"
set $START=%errorlevel%
call :TimeInHs "%$STOP%"
set $STOP=%errorlevel%
if %$START% gtr %$STOP% (
  set /a "$STOP+=24*60*60*100"
)
set /a $result=%$STOP% - %$START%
endLocal & exit /b %$result%
REM ============================================================================


REM ============================================================================
:TimeInHs
REM ===========
REM %1 - Time in format: HH:MM:SS,hs
REM Convert time into hundredths of a second
REM Result returned in %ERRORLEVEL%
REM ===========
setLocal
if [%~2] == [] (
  set T=%~1
) else (
  set T=%~1,%~2
)
for /f "tokens=1,2,3,4 delims=:," %%A in ("%T%") do (
  set HH=0%%A
  set MM=0%%B
  set SS=0%%C
  set hs=0%%D
)
set /a "HH=10 * %HH:~-2,1% + %HH:~-1,1%"
set /a "MM=10 * %MM:~-2,1% + %MM:~-1,1%"
set /a "SS=10 * %SS:~-2,1% + %SS:~-1,1%"
set /a "hs=10 * %hs:~-2,1% + %hs:~-1,1%"
set /a "$value=(((%HH% * 60) + %MM%) * 60 + %SS%) * 100 + %hs%"
endLocal & exit /b %$value%
REM ============================================================================


