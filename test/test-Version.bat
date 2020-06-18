@echo off
REM ============================================================================
:test-Version
REM ===========
REM Get Windows major version number from registry
call GetRegValue.bat $RES "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" CurrentMajorVersionNumber
REM Convert version number from hex to dec
set /a $RES=0+$RES
call DoTest.bat [--] Simple-int "Query system version" Version %$RES% exact
goto :EOF
REM ============================================================================


