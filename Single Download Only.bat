@echo off
setlocal
cd "%root%"

set /P URL1=Enter Url: %=%
go run main_select.go %URL1%

set loopcount=0
:loop
set /P URL=Enter Next Url: %=%
go run main_select.go %URL%
goto loop

pause
endlocal