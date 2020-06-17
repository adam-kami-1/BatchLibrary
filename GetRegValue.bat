@echo off

REM ============================================================================
:GetRegValue
REM ===========
REM %1 - Result variable name
REM %2 - Registry key name
REM %3 - Registry value name
REM ===========
setLocal

for /f "tokens=1,2,3*" %%A in ('reg query "%~2" /v "%~3"') do (
  set $result=
  if %%B == REG_SZ (
    set "$result=%%C"
  )
  if %%B == REG_MULTI_SZ (
    REM Values are separated with the string "\0"
    set "$result=%%C"
  )
  if %%B == REG_DWORD (
    REM Values are returned as hex value 0x....
    set "$result=%%C"
  )
  if %%B == REG_QWORD (
    REM Values are returned as hex value 0x....
    set "$result=%%C"
  )
)

endLocal & set %~1=%$result%& exit /b
REM ============================================================================
