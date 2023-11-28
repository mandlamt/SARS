@echo off
set day=15
set StatementDir=E:\Statements\Temp
echo Statement Directory %StatementDir%
echo >"%temp%\%~n0.vbs" s=DateAdd("d",%day%,now) : d=weekday(s)
echo>>"%temp%\%~n0.vbs" WScript.Echo year(s)^& right(100+month(s)-1,2)^& right(100+day(s),2)
for /f %%a in ('cscript /nologo "%temp%\%~n0.vbs"') do set "result=%%a"
del "%temp%\%~n0.vbs"
set "YYYY=%result:~0,4%"
set "MM=%result:~4,2%"
set "DD=%result:~6,2%"
if "%MM%"=="00" set "MM=12" & set /a YYYY=YYYY-1
set "data=%yyyy%%mm%%DD%"
set "fn=Temp"
set "str3=%fn%%data%%"
echo last year/month was "%str3%"
echo %StatementDir%
rename "%StatementDir%"   "%str3%"
::pause