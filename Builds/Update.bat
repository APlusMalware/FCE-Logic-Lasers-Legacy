@ECHO OFF
REM        ONLY USE WITH A CLEAN COPY OF THE GAME
REM        Pulls in the latest originals, then attempts to make a build and copy it over

cd ..\Originals\
call PullAndDissassemble.bat
cd ..\Builds\
call BuildAndCopy.bat