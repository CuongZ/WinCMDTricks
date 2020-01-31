@echo off
REM TURNED OFF ECHO, ONLY SHOW OUTPUT
REM ---------------------------------------------------------------------
REM DEMO FOR CHECKING THAT FOLDER EXIST, ELSE MAKE NEW FOLDER.
REM USE FOR TESTING. TESTED ON WINDOWS 10, BUILD 18362
REM THE FOLDER HERE IS NAMED ' keys '
REM I USUALLY FORGET SOME SIMPLE COMMAND, SO CREATED THIS GIST TO REMEMBER IT
REM SOURCE: https://gist.github.com/CuongZ
REM --------------------------------------------------------------------
REM --------------------------------------------------------------------
REM MAIN FUNC IS RUN, THE FOLDER IS ' keys '
if exist keys/ (
    echo folder exist
) else (
    mkdir keys
    echo folder created
)
REM ---------------------------------------------------------------------
pause
cmd

