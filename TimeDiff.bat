@echo off


REM ============================================================================
:TimeDiff
REM ===========
REM Calculate ('Second time' - 'First time') in hundredths of a second
REM Result returned in %ERRORLEVEL%
REM ===========
REM If both parameters are in quotes or decimal sep is a dot:
REM %1 - First time in format: HH:MM:SS,hs
REM %2 - Second time in format: HH:MM:SS,hs
REM If both parameters are not in quotes and decimal sep is a comma:
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
call TimeInHs.bat "%$START%"
set $START=%errorlevel%
call TimeInHs.bat "%$STOP%"
set $STOP=%errorlevel%
if %$START% gtr %$STOP% (
  set /a "$STOP+=24*60*60*100"
)
set /a $result=%$STOP% - %$START%
endLocal & exit /b %$result%
REM ============================================================================
