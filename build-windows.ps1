param (
    [Parameter(Mandatory=$true)]
    [string] $Type,

    [Parameter(Mandatory=$true)]
    [string] $Name,

    [Parameter(Mandatory=$true)]
    [string] $Version,

    [Parameter(Mandatory=$true)]
    [string] $CompilerName
)

Write-Output "executing: .\packages\$Type\$Name\$Version\invoke_windows.ps1"

. .\packages\$Type\$Name\$Version\invoke-windows.ps1 -CompilerName $CompilerName