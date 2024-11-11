#!/bin/bash

## This is ran on alma linux in wsl. This won't work on non-rhel based distros.

# Update the package index
sudo dnf update -y

# Install dependencies for .NET
sudo dnf install -y dotnet-sdk-8.0

# Verify .NET installation
if ! command -v dotnet &> /dev/null; then
    echo ".NET installation failed."
    exit 1
fi

echo ".NET SDK installed successfully."

# Install PowerShell using .NET
dotnet tool install -g powershell

# Add .NET tools to the PATH
export PATH="$PATH:$HOME/.dotnet/tools"

# Find the PowerShell executable path
powershell_path=$(which pwsh)

# Verify PowerShell installation
if [ -z "$powershell_path" ]; then
    echo "PowerShell installation failed."
    exit 1
fi

echo "PowerShell installed successfully at $powershell_path."

# Set PowerShell as the default shell for the current user
if chsh -s "$powershell_path"; then
    echo "Default shell switched to PowerShell."
else
    echo "Failed to switch default shell. You may need to log out and log back in."
fi

# Install Pester
pwsh -Command 'Install-Module -Name Pester -Scope CurrentUser -Force'

# Verify Pester installation
if pwsh -Command 'Get-Module -ListAvailable -Name Pester' | grep -q "Pester"; then
    echo "Pester installed successfully."
else
    echo "Pester installation failed."
    exit 1
fi

echo "Setup complete. PowerShell is now your default shell, and Pester is installed."
