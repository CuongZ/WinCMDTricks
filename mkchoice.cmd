@ECHO OFF
@echo off
REM TURNED OFF ECHO, ONLY SHOW OUTPUT
REM ---------------------------------------------------------------------
REM DEMO FOR USER CHOICE TO OTHER FUNCTION.
REM I ONLY MAKE 2 SELECTION, YOU WILL EDIT TO MORE CHOICE.
REM YOU CAN EDIT THE COMMAND CHOICE, IF ERRORLEVEL DEPENDS YOUR CHOICE NUMBER SET ( CHOICE /N /C:YOURCHOICEHERE /M "YourText"%1 )	
REM USE FOR TESTING. TESTED ON WINDOWS 10, BUILD 10.0.18362.592
REM I USUALLY FORGET SOME SIMPLE COMMAND, SO CREATED THIS GIST TO REMEMBER IT
REM SOURCE: https://gist.github.com/CuongZ
REM --------------------------------------------------------------------
REM --------------------------------------------------------------------
echo[	
:MAIN
echo Your choice:
echo 1) Choice 1
echo 2) Choice 2
echo 3) Exit to CMD
CHOICE /N /C:123 /M "Enter your choice here"%1	
IF ERRORLEVEL ==3 GOTO EXIT
IF ERRORLEVEL ==2 GOTO CHOICE2
IF ERRORLEVEL ==1 GOTO CHOICE1
:CHOICE1
echo You've selected 1
pause
goto MAIN
:CHOICE2
echo You've selected 2
pause
goto MAIN
:EXIT
echo You've selected to exit to CMD
REM --------------------------------------------------------------------
cmd