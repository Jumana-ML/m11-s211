python -m venv .venv

# Activate and install dependencies
# Works for Git Bash on Windows
echo "Activating virtual environment..."

source .venv/Scripts/activate

echo "Installing requirements..."

pip install -r requirements.txt

echo "--------------------------------"
echo "Setup complete! Run 'python main.py' to start."
