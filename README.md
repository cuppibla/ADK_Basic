# ADK Day Trip Planning Agent

A specialized AI agent built with Google's AI Development Kit (ADK) that generates creative and fun day trip plans based on user preferences, location, and budget constraints.

## Features

- 🎯 **Personalized Planning**: Generates trip suggestions based on user interests and preferences
- 📍 **Location-Aware**: Works with city names, addresses, or GPS coordinates
- 💰 **Budget-Conscious**: Targets moderate budget activities (affordable yet valuable)
- 🔍 **Real-Time Search**: Uses Google Search to find current events and venues
- 📅 **Date-Specific**: Plans activities for specific weekend dates
- 🎨 **Creative Suggestions**: Maximum 3 distinct activities per plan with detailed location information

## Prerequisites

- Python 3.8 or higher
  - **Python 3.9+**: Installs google-adk==1.5.0 (latest version with full features)
  - **Python 3.8**: Installs google-adk==0.3.0 (compatible version)
- Google ADK access and credentials
- Internet connection for Google Search functionality

## Quick Setup

### For Mac/Linux Users

#### Option 1: Automated Setup (Recommended)

1. **Clone or download this project**
2. **Run the setup script**:
   ```bash
   chmod +x setup_venv.sh
   ./setup_venv.sh
   ```
3. **Activate the environment**:
   ```bash
   source .adk_env/bin/activate
   ```

**⚠️ Important:** After setup, don't forget to [configure your environment variables](#configure-environment-variables) before running the agent!

#### Option 2: Manual Setup

1. **Create virtual environment**:
   ```bash
   python3 -m venv .adk_env
   source .adk_env/bin/activate
   ```

2. **Install dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

**⚠️ Important:** After installation, don't forget to [configure your environment variables](#configure-environment-variables) before running the agent!

### For Windows Users

#### Option 1: Automated Setup (Recommended)

1. **Clone or download this project**
2. **Open Command Prompt** in the project directory
3. **Run the setup script**:
   ```cmd
   setup_venv.bat
   ```

**⚠️ Important:** After setup, don't forget to [configure your environment variables](#configure-environment-variables) before running the agent!

#### Option 2: Manual Setup

1. **Clone or download this project**
2. **Open Command Prompt or PowerShell** in the project directory
3. **Create virtual environment**:
   ```cmd
   python -m venv .adk_env
   ```

4. **Activate virtual environment**:
   - **Command Prompt**:
     ```cmd
     .adk_env\Scripts\activate
     ```
   - **PowerShell**:
     ```powershell
     .adk_env\Scripts\Activate.ps1
     ```

5. **Install dependencies**:
   ```cmd
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

**⚠️ Important:** After installation, don't forget to [configure your environment variables](#configure-environment-variables) before running the agent!

### Configure Environment Variables

**Step 4: Create Environment Configuration**

1. **Create the .env file** in the `agent/` directory:

   **Mac/Linux:**
   ```bash
   touch agent/.env
   ```

   **Windows:**
   ```cmd
   type nul > agent\.env
   ```

2. **Edit the .env file** and add the following:
   ```env
   GOOGLE_GENAI_USE_VERTEXAI=FALSE
   GOOGLE_API_KEY=your_actual_api_key_here
   ```

   **Important:** Replace `your_actual_api_key_here` with your actual API key from Google AI Studio.

### Running the Agent

After setup and configuration (on both platforms):

1. **Activate virtual environment** (if not already active):

   **Mac/Linux:**
   ```bash
   source .adk_env/bin/activate
   ```

   **Windows Command Prompt:**
   ```cmd
   .adk_env\Scripts\activate
   ```

   **Windows PowerShell:**
   ```powershell
   .adk_env\Scripts\Activate.ps1
   ```

2. **Run the ADK web interface**:
   ```bash
   adk web
   ```

You should see `(.adk_env)` at the beginning of your terminal prompt, indicating the virtual environment is active.

### Deactivating the Environment

When you're done working with the project:
```bash
deactivate
```

This command works the same on both Mac/Linux and Windows. You'll notice the `(.adk_env)` prefix disappears from your terminal prompt.

## Configuration

### Google ADK Setup

1. **Install Google ADK** (if not already done):
   ```bash
   pip install google-adk
   ```

2. **Set up authentication**:
   - Follow Google ADK authentication guidelines
   - Ensure you have access to Gemini 2.0 Flash model
   - Configure Google Search tool access

3. **Get Google AI Studio API Key**:
   - Go to [Google AI Studio](https://aistudio.google.com/)
   - Create an account or sign in
   - Navigate to API Keys section
   - Create a new API key
   - Copy the API key for use in the next step

4. **Environment Variables** (required):
   Create a `.env` file in the `agent/` directory:
   ```env
   GOOGLE_GENAI_USE_VERTEXAI=FALSE
   GOOGLE_API_KEY=your_actual_api_key_here
   ```

   **Important:** Replace `your_actual_api_key_here` with your actual API key from Google AI Studio.

## Usage

### Basic Usage

```python
from agent.day_trip import root_agent

# The agent is pre-configured and ready to use
# You can interact with it through the ADK framework
```

### Agent Configuration

The agent is configured with the following parameters:

- **Name**: `planner_agent`
- **Model**: `gemini-2.0-flash`
- **Tools**: Google Search
- **Specialization**: Creative day trip planning

### Input Format

When using the agent, provide:

- **Date Range**: Start and end dates (YYYY-MM-DD format)
- **Location**: City/state name or GPS coordinates
- **Interests**: Comma-separated list (e.g., "outdoors, arts & culture, foodie, nightlife")

### Example Interaction

The agent expects requests formatted with placeholders:

```
For the upcoming weekend, specifically from 2024-01-15 to 2024-01-16,
in San Francisco, CA, please generate day trip suggestions for someone
interested in arts & culture, foodie experiences, and unique local events.
```

## Project Structure

```
ADK_Basic/
├── agent/
│   ├── __init__.py          # Package initialization
│   └── day_trip.py          # Main agent definition
├── requirements.txt         # Python dependencies
├── setup_venv.sh           # Virtual environment setup script (Mac/Linux)
├── setup_venv.bat          # Virtual environment setup script (Windows)
└── README.md               # This file
```

## Agent Capabilities

### Core Features

- **Creative Planning**: Generates engaging, memorable date experiences
- **Budget Awareness**: Targets moderate budget activities ($$)
- **Interest Matching**: Tailors suggestions to user preferences
- **Location Intelligence**: Provides precise coordinates and descriptions
- **Current Events**: Searches for specific weekend events and festivals
- **Fallback Planning**: Creates appealing generic plans when specific events aren't found

### Output Format

The agent returns plans in Markdown format with:
- Maximum 3 distinct activities
- Precise location details (name, lat/lon, description)
- Creative and fun suggestions
- Budget-appropriate recommendations

## Development

### Running Tests

```bash
# Activate virtual environment first
source adk_env/bin/activate

# Run tests (when available)
pytest
```

### Code Formatting

```bash
# Format code
black agent/

# Check linting
flake8 agent/
```

## Troubleshooting

### Common Issues

1. **Python Version Error**
   - Ensure Python 3.8+ is installed
   - Check version:
     - **Mac/Linux**: `python3 --version`
     - **Windows**: `python --version`

2. **Virtual Environment Activation Issues**
   - **Mac/Linux**: Use `source .adk_env/bin/activate`
   - **Windows Command Prompt**: Use `.adk_env\Scripts\activate`
   - **Windows PowerShell**: Use `.adk_env\Scripts\Activate.ps1`
   - If PowerShell gives execution policy error, run: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

3. **Google ADK Authentication**
   - Verify ADK credentials are properly configured
   - Check Google Cloud project permissions

4. **Module Import Errors**
   - Ensure virtual environment is activated
   - Reinstall requirements: `pip install -r requirements.txt`

5. **Google Search Tool Issues**
   - Verify Google Search API access
   - Check network connectivity

6. **Windows-Specific Issues**
   - If you get `'python' is not recognized`, try `py` instead of `python`
   - For PowerShell script execution issues, check execution policy settings

### Getting Help

1. Check Google ADK documentation
2. Verify all prerequisites are met
3. Ensure virtual environment is properly activated
4. Review error messages for specific issues

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is provided as-is for educational and development purposes.

---

**Note**: This agent requires valid Google ADK credentials and access to Google's AI services. Make sure you have the necessary permissions and API access before running the agent.
