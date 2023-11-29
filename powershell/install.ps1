# This script sets up profile.ps1 in the PowerShell profile directory

# Define the source and destination paths
$sourceProfile = "$PSScriptRoot\profile.ps1"
$destinationProfile = "$HOME\Documents\PowerShell\profile.ps1"
# grab from 

# Ensure the destination directory exists
$destinationDirectory = Split-Path -Path $destinationProfile -Parent
if (-not (Test-Path -Path $destinationDirectory)) {
    New-Item -Path $destinationDirectory -ItemType Directory
}

# Copy the profile.ps1 to the PowerShell profile location
Copy-Item -Path $sourceProfile -Destination $destinationProfile -Force

# Optional: Print a confirmation message
Write-Host "profile.ps1 has been applied to your PowerShell profile." -ForegroundColor Green
