$Public = Get-ChildItem "$PSScriptRoot\Public\*.ps1" -Recurse

$AllModules += $Public

foreach ($M in $AllModules) {
    try {
        . $M.FullName
    } catch {
        Write-Error -Message "Failed to import function from: $($M.FullName)"
    }
}

Export-ModuleMember *