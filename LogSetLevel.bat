@echo off

REM =============================================================================
:LogSetLevel
REM =============================================================================
REM %1 - LogLevel: ALL, CRITICAL, ERROR, WARNING, INFO, TRACE, DEBUG
REM      If parameter is empty then Current Log Level is displayed
REM =================

setlocal EnableDelayedExpansion

set ALL=0
set $LogLevelName[0]=
set CRITICAL=1
set $LogLevelName[1]=CRITICAL
set ERROR=2
set $LogLevelName[2]=ERROR
set WARNING=3
set $LogLevelName[3]=WARNING
set INFO=4
set $LogLevelName[4]=INFO
set TRACE=5
set $LogLevelName[5]=TRACE
set DEBUG=6
set $LogLevelName[6]=DEBUG

if "%~1" == "" (
   if "%$LogCurrLevel%" == "" (
      echo Current log level is ALL
   ) else (
      echo Current log level is %$LogCurrLevel%
   )
   goto :EOF
)
if /i "%~1" == "ALL" (
   set $LogCurrLevelNo=0
) else (
  REM Translate level name to number
  set $LogCurrLevelNo=!%1!
)

REM If first parameter was not valid level name then set $LogCurrLevelNo to ALL(0)
set /a "$LogCurrLevelNo=($LogCurrLevelNo+1)-1"

REM Store log level as a level name
set $LogCurrLevel=!$LogLevelName[%$LogCurrLevelNo%]!

endLocal & set $LogCurrLevel=%$LogCurrLevel%& exit /b
REM =============================================================================
