REM ============================================================================
:test-FormatTime
REM ===========
call DoTest.bat [--] Simple-str "Seconds in human format: 2.89 s"             FormatTime "2.89 s"                exact 289 -h
call DoTest.bat [--] Simple-str "Minutes in human format: 1 m 15.30 s"        FormatTime "1 m 15.30 s"           exact 7530 -h
call DoTest.bat [--] Simple-str "Hours in human format: 5 h 33 m 59.99 s"     FormatTime "5 h 33 m 59.99 s"      exact 2003999 -h
call DoTest.bat [--] Simple-str "Day in human format: 1 day 12 h 0 m 0.05 s"  FormatTime "1 day 12 h 0 m 0.05 s" exact 12960005 -h
call DoTest.bat [--] Simple-str "Days in human format: 2 days 2 h 5 m 1.50 s" FormatTime "2 days 2 h 5 m 1.50 s" exact 18030150 -h
call DoTest.bat [--] Simple-str "Seconds in machine format: 00:00:02.04"      FormatTime "00:00:02.04"           exact 204 -m
call DoTest.bat [--] Simple-str "Minutes in machine format: 00:01:15.30"      FormatTime "00:01:15.30"           exact 7530 -m
call DoTest.bat [--] Simple-str "Hours in machine format:05:33:59.99"         FormatTime "05:33:59.99"           exact 2003999 -m
call DoTest.bat [--] Simple-str "Days in machine format: 1 12:00:00.50"       FormatTime "1 12:00:00.50"         exact 12960050 -m
goto :EOF
REM ============================================================================


