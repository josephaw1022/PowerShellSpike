# Define an enum for log levels
enum LogLevel {
    Info
    Warning
    Error
}

# Define a function to log messages with different levels and colors
function Log-Message {
    param (
        [LogLevel]$Level,
        [string]$Message
    )

    # Use switch to handle different log levels with colors
    switch ($Level) {
        'Info' {
            Write-Host "INFO: $Message" -ForegroundColor Green
        }
        'Warning' {
            Write-Host "WARNING: $Message" -ForegroundColor Yellow
        }
        'Error' {
            Write-Host "ERROR: $Message" -ForegroundColor Red
        }
        default {
            Write-Host "UNKNOWN: $Message" -ForegroundColor White
        }
    }
}

# Example usage of the function with each log level
Log-Message -Level Info -Message "This is an informational message."
Log-Message -Level Warning -Message "This is a warning message."
Log-Message -Level Error -Message "This is an error message."
