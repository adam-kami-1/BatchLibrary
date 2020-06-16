@echo off
setLocal
for /f "tokens=1,2" %%A in ('mode con: /status') do (
  if "%%A" == "Columns:" set COLUMNS=%%B
)
endLocal & set COLUMNS=%COLUMNS%& exit /b
