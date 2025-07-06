@echo off
REM ADK Agent Virtual Environment Setup Script for Windows

echo 🚀 Setting up ADK Agent virtual environment...

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python is required but not installed. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

REM Get Python version
for /f "tokens=2" %%i in ('python --version 2^>^&1') do set python_version=%%i
echo ✅ Python %python_version% detected

REM Create virtual environment
echo 📦 Creating virtual environment...
python -m venv .adk_env

REM Activate virtual environment
echo 🔧 Activating virtual environment...
call .adk_env\Scripts\activate.bat

REM Upgrade pip
echo ⬆️  Upgrading pip...
pip install --upgrade pip

REM Install requirements
echo 📥 Installing dependencies...
pip install -r requirements.txt

echo ✅ Setup complete!
echo.
echo To activate the virtual environment in the future, run:
echo    .adk_env\Scripts\activate
echo.
echo To deactivate the virtual environment, run:
echo    deactivate
echo.
echo Press any key to continue...
pause >nul
