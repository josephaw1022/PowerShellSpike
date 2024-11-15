# Guard clause to check if the platform is Linux
if (-not $IsLinux) {
    Write-Output "Sorry, this script is only for Linux users."
    exit
}

# Proceed with systemctl command for Linux
Write-Output "Detected Linux OS. Proceeding with systemctl command..."

systemctl
