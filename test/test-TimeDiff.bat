REM ============================================================================
:test-TimeDiff
REM ===========
call DoTest.bat [--] Simple-int "Seconds" TimeDiff 289     exact "13:20:34,11" "13:20:37,00"
call DoTest.bat [--] Simple-int "Minutes" TimeDiff 7530    exact "13:20:34,11" "13:21:49,41"
call DoTest.bat [--] Simple-int "Hours"   TimeDiff 2003999 exact "13:20:34,11" "18:54:34,10"
goto :EOF
REM ============================================================================


