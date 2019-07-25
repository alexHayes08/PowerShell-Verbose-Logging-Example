Import-Module "$PSScriptRoot/submodule.psm1" -Force -Global;

Write-Host "Script root: $PSScriptRoot";

function Test-LoggingMain {
    [CmdletBinding()]
    param()

    Write-Host "Main: Verbose preference is '$VerbosePreference'.";
    Write-Verbose "Main: Calling verbose.";
    Test-LoggingSub;
}

Export-ModuleMember -Function @('Test-LoggingMain', 'Test-LoggingSub');
