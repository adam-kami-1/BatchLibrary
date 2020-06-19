@echo off

REM set $LOG_FILE=%~d0%~p0%~n0.log


REM ============================================================================
:Log
REM ===========
REM %* - all parameters to send to stdout and $LOG_FILE
REM ===========
if not "%$LOG_FILE%" == "" goto :ToFile
if "%~1" == "" (
  echo;
) else (
  if "%~2" == "" (
    echo %~1
  ) else (
    echo %*
  )
)
goto :EOF
:ToFile
if "%~1" == "" (
  echo;
  echo;>> %$LOG_FILE%
) else (
  if "%~2" == "" (
    echo %~1
    echo %~1>> %$LOG_FILE%
  ) else (
    echo %*
    echo %*>> %$LOG_FILE%
  )
)
goto :EOF
REM ============================================================================

