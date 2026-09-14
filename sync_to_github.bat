@echo off
echo Initializing Git Synchronization for ConvLSTM Pipeline...

:: Create .gitignore if it doesn't exist
if not exist .gitignore (
    echo *.tif > .gitignore
    echo *.h5 >> .gitignore
    echo *.keras >> .gitignore
    echo __pycache__/ >> .gitignore
    echo .ipynb_checkpoints/ >> .gitignore
    echo Created .gitignore to block large satellite files.
)

:: Execute Git Workflow
git init
git remote set-url origin https://github.com/OcholiIsrael/Deep_Machine_Learning.git
git add .
git commit -m "Automated Pipeline Update: %date% %time%"
git branch -M main
git push -u origin main

echo.
echo Sync Complete! Press any key to exit.
pause >nul