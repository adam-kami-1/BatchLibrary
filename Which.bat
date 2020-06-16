@echo off


REM ============================================================================
:Which
REM ===========
setLocal enableDelayedExpansion
REM %1 - Executable name
set $EXE=%~1
REM ===========
set $PathList=.;%PATH%
:Which-path-loop
  for /f "tokens=1,* delims=;" %%P in ("!$PathList!") do (
    call :Which-Check-Path "%%P" "%$EXE%"
    set $PathList=%%Q
  )
if not "!$PathList!" == "" goto :Which-path-loop
endLocal
goto :EOF
REM ============================================================================


REM ============================================================================
:Which-Check-Path
REM ===========
setLocal enableDelayedExpansion
REM %1 - Path to search
set $P=%~1
REM %2 - Executable name
set $EXE=%~2
REM ===========
if "%$P:~-1%" == "\" set $P=%$P:~0,-1%
set $ExtList=%PATHEXT%
:Which-ext-loop
  for /f "tokens=1,* delims=;" %%E in ("!$ExtList!") do (
    if exist "%$P%\%$EXE%%%E" call :Which-Show "%$P%\%$EXE%%%E"
    set $ExtList=%%F
  )
if not "!$ExtList!" == "" goto :Which-ext-loop
endLocal
goto :EOF
REM ============================================================================


REM ============================================================================
:Which-Show
REM ===========
setLocal enableDelayedExpansion
REM %1 - Result to display
set $RES=%~f1
echo %$RES%
endLocal
goto :EOF
REM ============================================================================


REM if exist "%$P%\*%$EXE%*%%E" for %%C in ("%$P%\*%$EXE%*%%E") do echo %%C              | shows all similar

REM if exist "%$P%\%$EXE%%%E"                                     echo %$P%\%$EXE%%%E    | Error "\Common was unexpected at this time." in echo when e.g. %$P% == C:\Program Files (x86)\Common Files\Microsoft Shared\Windows Live

REM if exist "%$P%\%$EXE%%%E"   for %%C in ("%$P%\%$EXE%%%E")  do echo %%C               | works but shows in quotes and case of extension taken from PATHEXT not from file

REM if exist "%$P%\%$EXE%%%E"   for %%C in ("%$P%\%$EXE%%%E*")  do echo %%C              | works but but may show longer extensions like e.g. *.exeC


