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
- Google ADK access and credentials
- Internet connection for Google Search functionality

## Quick Setup

### Option 1: Automated Setup (Recommended)

1. **Clone or download this project**
2. **Run the setup script**:
   ```bash
   chmod +x setup_venv.sh
   ./setup_venv.sh
   ```
3. **Activate the environment**:
   ```bash
   source adk_env/bin/activate
   ```

### Option 2: Manual Setup

1. **Create virtual environment**:
   ```bash
   python3 -m venv adk_env
   source adk_env/bin/activate  # On Windows: adk_env\Scripts\activate
   ```

2. **Install dependencies**:
   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

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

3. **Environment Variables** (optional):
   Create a `.env` file in the project root:
   ```env
   # Add any required environment variables here
   GOOGLE_API_KEY=your_api_key_here
   ```

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
├── setup_venv.sh           # Virtual environment setup script
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
   - Use `python3 --version` to check

2. **Google ADK Authentication**
   - Verify ADK credentials are properly configured
   - Check Google Cloud project permissions

3. **Module Import Errors**
   - Ensure virtual environment is activated
   - Reinstall requirements: `pip install -r requirements.txt`

4. **Google Search Tool Issues**
   - Verify Google Search API access
   - Check network connectivity

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
