@ECHO OFF
ECHO ======================================================================================================================
:download_song
ECHO.
SET /P URL="[Enter video URL] "
ECHO.
ECHO ======================================================================================================================
ECHO.
yt-dlp --no-playlist -x --audio-format "mp3" --output "%%(title)s.%%(ext)s" "%URL%" --paths "C:\Users\user\Music\Temps"
ECHO.
ECHO ======================================================================================================================
ECHO.
SET /P CONTINUE="Download another song? [y/n] "
if /I "%CONTINUE%"=="y" GOTO :download_song
ECHO Done!
PAUSE
