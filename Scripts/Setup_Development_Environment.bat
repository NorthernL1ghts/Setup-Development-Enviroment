# Exit immediately if a command exits with a non-zero status
$ErrorActionPreference = "Stop"

Write-Host "Updating system packages..."
# Check for system updates
winget upgrade --all

Write-Host "Installing essential tools and build dependencies..."
# Install build-essential tools using winget (Windows Package Manager)
winget install --id Microsoft.VisualStudio.BuildTools
winget install --id Git.Git
winget install --id Curl.Curl
winget install --id Microsoft.WindowsTerminal

Write-Host "Installing Python and related tools..."
winget install --id Python.Python.3
winget install --id Python.Python.Pip

Write-Host "Installing Bash shell utilities..."
# Install Git Bash as a substitute for Bash shell
winget install --id Git.Git

Write-Host "Installing Visual Studio Code..."
winget install --id Microsoft.VisualStudioCode

Write-Host "Installing other programming tools (replace 'tfwdmimsl' with the actual package name if applicable)..."
# Placeholder for custom tools or additional dependencies
# For "tfwdmimsl," update this line with the proper package/source
Write-Host "The tool 'tfwdmimsl' is not recognized. Skipping..."

Write-Host "Cleaning up unnecessary files..."
# Clean up package cache and unused files
winget garbagecollect

Write-Host "Setup completed! Your development environment is ready."
