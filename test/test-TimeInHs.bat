@echo off
REM ============================================================================
:test-TimeInHs
REM ===========
call DoTest.bat [--] Simple-int "Seconds 00:00:02,89" TimeInHs 289     exact "00:00:02,89"
call DoTest.bat [--] Simple-int "Minutes 00:01:15,30" TimeInHs 7530    exact "00:01:15,30"
call DoTest.bat [--] Simple-int "Hours   05:33:59,99" TimeInHs 2003999 exact "05:33:59,99"
call DoTest.bat [--] Simple-int "Unquot. 05:33:59,99" TimeInHs 2003999 exact 05:33:59,99
call DoTest.bat [--] Simple-int "100 s . 05:33:59.99" TimeInHs 2003999 exact "05:33:59.99"
call DoTest.bat [--] Simple-int "All s . 05.33.59.99" TimeInHs 2003999 exact "05.33.59.99"
call DoTest.bat [--] Simple-int "No Hs   05:33:59"    TimeInHs 2003900 exact "05:33:59"
call DoTest.bat [--] Simple-int "Invalid HH:MM:SS,hs" TimeInHs 0       exact "HH:MM:SS,hs"
goto :EOF
REM ============================================================================


