@echo off
REM TURNED OFF ECHO, ONLY SHOW OUTPUT
REM ---------------------------------------------------------------------
REM DEMO FOR USER INPUT TO MAKE VARIABLE
REM USE FOR TESTING. TESTED ON WINDOWS 10, BUILD 18362
REM THE VARIABLE IN THIS SCRIPT IS: %userinput1%
REM NOTE: IN COMMAND ' set ', DO NOT USE % WHEN SET YOUR VARIABLE
REM WHEN USING OTHER, USE % IN VARIABLE, DO NOT JUST ONLY YOUR VARIABLE NAME.
REM DEMO OF INCORRECT CODE WRITE FOR THIS CASE: ( set %userinput1%= ) ( ITS INCORRECT )
REM _______   CORRECT _________________________: ( set userinput1= )  ( ITS CORRECT )
REM I USUALLY FORGET SOME SIMPLE COMMAND, SO CREATED THIS GIST TO REMEMBER IT
REM SOURCE: https://gist.github.com/CuongZ
REM --------------------------------------------------------------------
REM --------------------------------------------------------------------
set userinput1=
echo Please enter your first input:
set /p userinput1=
echo Your first input is: %userinput1%
REM ---------------------------------------------------------------------
pause
cmd
