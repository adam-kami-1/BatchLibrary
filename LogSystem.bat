@echo off

setlocal
setlocal EnableDelayedExpansion

call :SetLogLevel CRITICAL


call :Log CRITICAL Critical message
call :Log ERROR Error message
call :Log WARNING Warning message
call :Log INFO Info message
call :Log TRACE Trace message
call :Log DEBUG Debug message
call :Log BLAD Blad message
call :Log TMP Tmp message

goto :EOF




REM =============================================================================
:SetLogLevel
REM =============================================================================
REM %1 - LogLevel: CRITICAL, ERROR, WARNING, INFO, TRACE, DEBUG
REM =================

set CRITICAL=0
set $LogLevel[0]=CRITICAL
set ERROR=1
set $LogLevel[1]=ERROR
set WARNING=2
set $LogLevel[2]=WARNING
set INFO=3
set $LogLevel[3]=INFO
set TRACE=4
set $LogLevel[4]=TRACE
set DEBUG=5
set $LogLevel[5]=DEBUG

REM Translate level name to number
set $LogLevel=!%1!

REM If first parameter was not valid level name then set $LogLevel to CRITICAL
set /a "$LogLevel=($LogLevel+1)-1"

goto :EOF
REM =============================================================================


REM =============================================================================
:Log
REM =============================================================================
REM %1 - Level: CRITICAL, ERROR, WARNING, INFO, TRACE, DEBUG
REM %2 %3 %4 ... - Log message
REM =================

REM If :SetLogLevel was not called then set $LogLevel to CRITICAL
set /a "$LogLevel=($LogLevel+1)-1"
if "!$LogLevel[%$Level%]!" == "" call :SetLogLevel CRITICAL

REM If first parameter is not valid level name then set it to CRITICAL
set $Level=!%1!
set /a "$Level=($Level+1)-1"

REM Check $Level against $LogLevel, and echo log if succesfull
if "%$Level%" GTR "%$LogLevel%" goto :EOF

set $LogMsg=%date% %time%: !$LogLevel[%$Level%]!:

REM Skip first parameter if it was correct level name
if NOT "!$LogLevel[%$Level%]!" == "%1" goto :LogLoop
shift

:LogLoop
  if "%1" == "" (
    echo !$LogMsg!
    goto :EOF
  )
  set $LogMsg=!$LogMsg! %1
  shift
goto :LogLoop
REM =============================================================================

