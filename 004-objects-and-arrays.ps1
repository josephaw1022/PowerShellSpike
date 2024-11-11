# Initialize a global array to hold multiple person objects
$Global:people = @()

# Define a function to create a new person object
function New-Person {
    param (
        [string]$Name,
        [int]$Age,
        [string[]]$Skills
    )

    # Create a custom object for a person
    $person = [PSCustomObject]@{
        Name = $Name
        Age = $Age
        Skills = $Skills
    }

    # Add the new person object to the global array
    $Global:people += $person
}

# Add people to the array
New-Person -Name "Alice" -Age 30 -Skills @("PowerShell", "Python", "Azure")
New-Person -Name "Bob" -Age 25 -Skills @("JavaScript", "HTML", "CSS")
New-Person -Name "Charlie" -Age 35 -Skills @("C#", "SQL", "Docker")

# Display information for each person in the array
foreach ($person in $people) {
    Write-Host "Name: $($person.Name)"
    Write-Host "Age: $($person.Age)"
    Write-Host "Skills: $($person.Skills -join ', ')"
    Write-Host "-----------------------------"
}

# Demonstrating array manipulation
Write-Host "Total number of people: $($people.Count)"
Write-Host "Names of people with 'PowerShell' skill:"

# Filter array to find people with a specific skill
$powerShellExperts = $people | Where-Object { $_.Skills -contains "PowerShell" }
foreach ($expert in $powerShellExperts) {
    Write-Host "- $($expert.Name)"
}
