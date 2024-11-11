# Get the current hour
$currentHour = (Get-Date).Hour

# Check the time of day and print a greeting
if ($currentHour -lt 12) {
    Write-Output "Good morning!"
} elseif ($currentHour -lt 18) {
    Write-Output "Good afternoon!"
} else {
    Write-Output "Good evening!"
}
