
Write-Output "Starting program at $(Get-Date)" # Date will be substituted

$Name_of_app = $MyInvocation.MyCommand.Name

Write-Output "Running program $Name_of_app with $# arguments with pid $PID"

foreach ($file in $args) {
    rg foobar "$file"
    # When pattern is not found, grep has exit status 1
    # We redirect STDOUT and STDERR to a null register since we do not care about them
    if ( $? -ne 0 ) {
        Write-Output "File $file does not have any foobar, adding one"
        Write-Output "# foobar" >> "$file"
    }
}