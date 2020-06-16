@echo off


REM ============================================================================
:FormatTime
REM ===========
REM %1 - Result variable name
REM %2 - Time in hundredths of a second
REM %3 - Format of time:
REM        -h: [[[1 day[s] ]2 h ]3 m ]4,5 s   (default)
REM        -m: [1 ]02:03:04,50
REM ===========
setLocal
set $w=%2
set /a "$hs=%$w% %% 100"
set /a "$w=(%$w% - %$hs%) / 100"
set /a "$SS=%$w% %% 60"
set /a "$w=(%$w% - %$SS%) / 60"
set /a "$MM=%$w% %% 60"
set /a "$w=(%$w% - %$MM%) / 60"
set /a "$HH=%$w% %% 24"
set /a "$days=(%$w% - %$HH%) / 24"
set $result=
if /i "%~3" == "-m" (
  if %$days% gtr 0 set "$result=%$days% "
  set $HH=0%$HH%
  set $MM=0%$MM%
  set $SS=0%$SS%
  set $hs=0%$hs%
) else (
  if %$days% gtr 1 set "$result=%$days% days "
  if %$days% equ 1 set "$result=1 day "
)
if /i "%~3" == "-m" (
  set $result=%$result%%$HH:~-2%:%$MM:~-2%:%$SS:~-2%,%$hs:~-2%
) else (
  if %$HH% gtr 0 (
    set $result=%$result%%$HH% h %$MM% m %$SS%,%$hs% s
  ) else (
    if %$MM% gtr 0 (
      set $result=%$result%%$MM% m %$SS%,%$hs% s
    ) else (
      set $result=%$result%%$SS%,%$hs% s
    )
  )
)
endLocal & set %~1=%$result%& exit /b
REM ============================================================================

