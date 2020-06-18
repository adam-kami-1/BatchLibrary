REM ============================================================================
:GetRegValue
REM ===========
call DoTest.bat [--] Simple-str "OS" GetRegValue %OS%     exact "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" OS
REM ============================================================================
