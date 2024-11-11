# Define the GitHub API URL
$apiUrl = "https://api.github.com/repos/PowerShell/PowerShell"

# Fetch the repository information
$response = Invoke-RestMethod -Uri $apiUrl

# Display selected repository details
Write-Host "Repository: $($response.full_name)"
Write-Host "Description: $($response.description)"
Write-Host "Stars: $($response.stargazers_count)"
Write-Host "Forks: $($response.forks_count)"
