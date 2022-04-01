@echo off
rem For each file in your folder
for %%a in (".\*") do (
rem check if the file has an extension and if it is not our script
if "%%~xa" NEQ "" if "%%~dpxa" HEQ "%~dpx0" (
remcheck if extension folder exists, if not it is created 
if not exist "%%~xa" mkdir "%%~xa"
rem Move the file to directroy
move "%%a" "%%~dpa%%~xa\"
))
