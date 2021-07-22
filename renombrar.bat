@echo off
for /R "." %%a in (*.docx) do (SET ruta=%%a&SET archivo=%%~nxa&CALL :renombrar)
pause
:renombrar
set archivo=%archivo:quequierocambiar=cambio%
ren "%ruta%" "%archivo%"
goto:eof
