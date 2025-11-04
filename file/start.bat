@echo off
echo ========================================
echo   Zenithia.AI - Quick Start Script
echo ========================================
echo.

echo [1/4] Checking Python installation...
python --version
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8+ from python.org
    pause
    exit /b 1
)
echo Python is installed!
echo.

echo [2/4] Installing dependencies...
pip install Flask Flask-MySQLdb Werkzeug mysqlclient
if errorlevel 1 (
    echo.
    echo WARNING: mysqlclient installation failed
    echo Trying alternative (PyMySQL)...
    pip install pymysql
)
echo Dependencies installed!
echo.

echo [3/4] Configuration Check...
echo.
echo IMPORTANT: Before running the application, please ensure:
echo 1. MySQL Server is running
echo 2. Database 'zenithia_ai_db' is created (run database_setup.sql in MySQL Workbench)
echo 3. MySQL password is configured in app.py (line 10)
echo.
set /p READY="Have you completed the above steps? (y/n): "
if /i not "%READY%"=="y" (
    echo.
    echo Please complete the setup steps first:
    echo 1. Open MySQL Workbench
    echo 2. Run database_setup.sql
    echo 3. Edit app.py and set your MySQL password
    echo.
    echo Then run this script again.
    pause
    exit /b 0
)

echo.
echo [4/4] Starting Zenithia.AI...
echo.
echo ========================================
echo   Application is starting...
echo   Open your browser and visit:
echo   http://127.0.0.1:5000
echo.
echo   Admin Login:
echo   Email: admin@zenithia.ai
echo   Password: admin123
echo ========================================
echo.

python app.py

pause
