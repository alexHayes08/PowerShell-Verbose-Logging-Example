function Test-LoggingSub {
    [CmdletBinding()]
    param()

    Write-Host "Sub: Verbose preference is '$VerbosePreference'.";
    Write-Verbose "Sub: Calling verbose.";
}

Export-ModuleMember -Function @('Test-LoggingSub');
