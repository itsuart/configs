@echo off
call c:\tools\mingw32.cmd
call c:\tools\msys.cmd
SET PATH="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Tools\MSVC\14.13.26128\bin\Hostx64\x64";C:\tools\emacs\bin;c:\tools;%PATH%
cmd.exe
