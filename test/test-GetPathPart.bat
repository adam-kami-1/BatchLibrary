REM ============================================================================
:GetPathPart
REM ===========
call DoTest.bat [--] Simple-str "Name"      GetPathPart GetPathPart exact n GetPathPart.bat
call DoTest.bat [--] Simple-str "Extension" GetPathPart .bat        exact x GetPathPart.bat
call DoTest.bat [--] Simple-str "Size"      GetPathPart 1234        exact z GetPathPart.bat
REM ============================================================================
