@echo off
call c:\tools\mingw64.cmd
call c:\tools\msys.cmd
@SET PATH=C:\tools\emacs-24.3\bin;%PATH%
cmd.exe
