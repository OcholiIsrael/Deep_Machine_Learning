@echo off
echo Resetting Git Repository to clear bloated files...

:: 1. Delete the corrupted Git history (the hidden .git folder)
rmdir /S /Q .git

:: 2. Create an aggressive .gitignore to block ALL heavy data
echo *.tif > .gitignore
echo *.tiff >> .gitignore
echo *.h5 >> .gitignore
echo *.keras >> .gitignore
echo *.npy >> .gitignore
echo *.cpg >> .gitignore
echo *.dbf >> .gitignore
echo __pycache__/ >> .gitignore
echo .ipynb_checkpoints/ >> .gitignore
echo Created aggressive .gitignore.

:: 3. Initialize a brand new, clean repository
git init
git remote add origin https://github.com/OcholiIsrael/Deep_Machine_Learning.git

:: 4. Stage and commit only the lightweight files (Code, CSVs, PNGs)
git add .
git commit -m "Clean Initial Commit: ConvLSTM Sprawl Pipeline"
git branch -M main

:: 5. Push to GitHub
echo Pushing lightweight payload to GitHub...
git push -u origin main

echo.
echo Sync Complete! Press any key to exit.
pause >nul