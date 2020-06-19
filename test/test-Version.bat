@echo off
REM ============================================================================
:test-Version
REM ===========
REM Get Windows major version number from registry
call GetRegValue.bat $RES "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" CurrentMajorVersionNumber
call DoTest.bat [--] Simple-int "Query system version" Version %$RES% exact
goto :EOF
REM ============================================================================


