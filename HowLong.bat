@echo off
setLocal
set $START=%TIME%
@echo on
call %*
@echo off
call %~dp0TimeDiff %$START% %TIME%
call %~dp0FormatTime $RETVALUE %errorlevel%
echo;
echo The execution of '%*' took %$RETVALUE%
endLocal
goto :EOF
