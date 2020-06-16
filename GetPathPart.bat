@echo off


REM ============================================================================
:GetPathPart
REM ===========
setLocal
REM %1 - Result variable name
REM %2 - Path part code:
REM           f - Fully qualified path name
REM           d - Drive letter only
REM           p - Path only
REM           n - file Name without file extension or path
REM           x - file eXtension only
REM           a - file attributes
REM           t - file date/time
REM           z - file siZe
set $C=%~2
REM %3 - Input path
REM ===========
if "%~3" == "" ( endLocal & call "%~f0" "%~1" %$C% .\ & exit /b)
set $RES=%~3
if "%$C%" == "f" set $RES=%~f3
if "%$C%" == "d" set $RES=%~d3
if "%$C%" == "p" set $RES=%~p3
if "%$C%" == "n" set $RES=%~n3
if "%$C%" == "x" set $RES=%~x3
if "%$C%" == "dp" set $RES=%~dp3
if "%$C%" == "dpn" set $RES=%~dpn3
if "%$C%" == "dpnx" set $RES=%~dpnx3
if "%$C%" == "pn" set $RES=%~pn3
if "%$C%" == "pnx" set $RES=%~pnx3
if "%$C%" == "nx" set $RES=%~nx3
if "%$C%" == "a" set $RES=%~a3
if "%$C%" == "t" set $RES=%~t3
if "%$C%" == "z" set $RES=%~z3
endLocal & set %~1=%$RES%& exit /b
goto :EOF
REM ============================================================================


