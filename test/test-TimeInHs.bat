REM ============================================================================
:test-TimeInHs
REM ===========
call DoTest.bat [--] Simple-int "Seconds" TimeInHs 289     exact "00:00:02,89"
call DoTest.bat [--] Simple-int "Minutes" TimeInHs 7530    exact "00:01:15,30"
call DoTest.bat [--] Simple-int "Hours"   TimeInHs 2003999 exact "05:33:59,99"
call DoTest.bat [--] Simple-int "Invalid" TimeInHs 0       exact "HH:MM:SS,hs"
goto :EOF
REM ============================================================================


