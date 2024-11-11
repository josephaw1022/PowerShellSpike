# Define a JSON string
$jsonString = @'
{
    "name": "Joseph Whiteaker",
    "age": 30,
    "skills": [
        "PowerShell",
        "Bash",
        "Python"
    ],
    "location": {
        "city": "Los Angeles",
        "state": "CA"
    }
}
'@

# Convert the JSON string to a PowerShell object
$person = $jsonString | ConvertFrom-Json

# Display original object
Write-Host "Original Object:"
$person | Format-Table

# Access and modify object properties
$person.age = 31
$person.skills += "JavaScript"
$person.location.city = "San Francisco"

# Display modified object
Write-Host "`nModified Object:"
$person | Format-Table

# Convert the modified object back to JSON
$modifiedJsonString = $person | ConvertTo-Json -Depth 3
Write-Host "`nModified JSON String:"
Write-Host $modifiedJsonString

# Set the output file path in the temporary directory
$tempDir = [System.IO.Path]::GetTempPath()  # This retrieves the system temp directory
$outputFile = Join-Path -Path $tempDir -ChildPath "modified_person.json"

# Write JSON to the temporary file location
$modifiedJsonString | Set-Content -Path $outputFile
Write-Host "`nModified JSON written to $outputFile"

# Read JSON from the temporary file and display
$readJsonString = Get-Content -Path $outputFile -Raw
$readJson = $readJsonString | ConvertFrom-Json
Write-Host "`nRead JSON from File:"
$readJson | Format-Table
