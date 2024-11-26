#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

echo "Installing essential tools and build dependencies..."
sudo apt install -y build-essential curl wget git software-properties-common

echo "Installing Python and related tools..."
sudo apt install -y python3 python3-pip python3-venv

echo "Installing Bash shell utilities..."
sudo apt install -y bash-completion

echo "Installing Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update -y
sudo apt install -y code
rm -f packages.microsoft.gpg

echo "Installing other programming tools (replace 'tfwdmimsl' with the actual package name if applicable)..."
# Placeholder for custom tools or additional dependencies
# For "tfwdmimsl," update this line with the proper package/source
echo "The tool 'tfwdmimsl' is not recognized. Skipping..."

echo "Cleaning up unnecessary files..."
sudo apt autoremove -y
sudo apt autoclean -y

echo "Setup completed! Your development environment is ready."
