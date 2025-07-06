#!/bin/bash

# ADK Agent Virtual Environment Setup Script

set -e  # Exit on any error

echo "🚀 Setting up ADK Agent virtual environment..."

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is required but not installed. Please install Python 3.8 or higher."
    exit 1
fi

# Check Python version
python_version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
required_version="3.8"
recommended_version="3.9"

if [ "$(printf '%s\n' "$required_version" "$python_version" | sort -V | head -n1)" != "$required_version" ]; then
    echo "❌ Python $required_version or higher is required. Current version: $python_version"
    exit 1
fi

echo "✅ Python $python_version detected"

# Check which version of google-adk will be installed
if [ "$(printf '%s\n' "$recommended_version" "$python_version" | sort -V | head -n1)" = "$recommended_version" ]; then
    echo "🎯 Python $python_version >= 3.9 → Will install google-adk==1.5.0 (latest version)"
else
    echo "⚠️  Python $python_version < 3.9 → Will install google-adk==0.3.0 (compatible version)"
    echo "   For the latest features, consider upgrading to Python 3.9 or higher"
fi

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv .adk_env

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source .adk_env/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip

# Install requirements
echo "📥 Installing dependencies..."
pip install -r requirements.txt

echo "✅ Setup complete!"
echo ""
echo "To activate the virtual environment in the future, run:"
echo "   source .adk_env/bin/activate"
echo ""
echo "To deactivate the virtual environment, run:"
echo "   deactivate"
