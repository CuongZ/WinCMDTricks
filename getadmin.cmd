title CuongZ's Administrator CMDs
@echo off
echo CuongZ's Administrator CMDs
@echo off
echo Changing the terminal color to h3ck3rc0l0r
color 0a
echo Done!
cls
echo Get admin script v1.2
echo (c) CuongZ
echo Checking for current permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

echo Checked done, result: %errorlevel%


if '%errorlevel%' NEQ '0' (
echo Next step, you need click "Yes" on UAC Prompt.
echo[
echo[
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

echo Load script: "%temp%\getadmin.vbs"
timeout /T 5
"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0" 

echo Get admin successfully with 0 or more error(s).
echo Starting Command Prompt...
echo[
echo[
cmd