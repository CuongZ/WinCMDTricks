@echo off
REM ---------------------------------------------------------------------
REM Easy make cert by dtcu0ng ( CuongZ )
REM Need Microsoft's Makecert, Cert2SPC, PVK2PFX
REM ---------------------------------------------------------------------
REM ---------------------------------------------------------------------
if exist keys (
set KEYDIR=keys
) else (
mkdir keys
set KEYDIR=keys
)
echo EZMakeCert by dtcu0ng ( CuongZ )
set Certname=[NO CERTNAME ENTERED, THIS CAUSE ERROR]
echo Input your cert name:
set /p Certname=
set CERTIFICATE_PASSWORD=[NO CERTPASSWORD ENTERED, THIS CAUSE ERROR]
echo Input your cert password ( choose carefully, you'll need this later. )
set /p CERTIFICATE_PASSWORD=
cls
echo Checkout:
echo[
	echo Your cert name is: %Certname%
	echo Your cert password is: %CERTIFICATE_PASSWORD%
	pause
	makecert -r -n "CN=%Certname%" -eku 1.3.6.1.5.5.7.3.3 -sv %KEYDIR%\%Certname%_cert.pvk %KEYDIR%\%Certname%_cert.cer
	cert2spc %KEYDIR%\%Certname%_cert.cer %KEYDIR%\%Certname%_cert.spc
	pvk2pfx.exe -pvk %KEYDIR%\%Certname%_cert.pvk -pi %CERTIFICATE_PASSWORD% -spc %KEYDIR%\%Certname%_cert.spc -pfx %KEYDIR%\%Certname%_cert.pfx -po %CERTIFICATE_PASSWORD%
REM ---------------------------------------------------------------------
pause
cmd
