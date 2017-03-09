echo off

REM
REM  Delete thumbs.db files and report those that have been deleted
REM  Usage: Change 'H:\username\Music' to the required directory and run by double-clicking on the batch file's icon
REM

for /r "H:\username\Music" %%X in (thumbs.db) do (
	If exist "%%X" (
		echo Deleting %%X
		del /f /a "%%X"
	)
)

echo Done!  All thumbs.db files in the selected directory tree have now been deleted!

pause
