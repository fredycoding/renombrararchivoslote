# renombrar archivos por lote en Windows
Renombrar archivos por lote en Windows .bat

Crear un archivo .bat con el siguiente código:

@echo off
for /R "." %%a in (*.docx) do (SET ruta=%%a&SET archivo=%%~nxa&CALL :renombrar)
pause
:renombrar
set archivo=%archivo:quequierocambiar=cambio%
ren "%ruta%" "%archivo%"
goto:eof
