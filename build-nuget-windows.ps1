param (
    [Parameter(Mandatory=$true)]
    [string] $Latest,
    [Parameter(Mandatory=$true)]
    [string] $CompilerName
)

if ($Latest -like "1") {
    Write-Output "Using latest versions of packages..."
}
else {
    Write-Output "Using first versions of packages..."
}

$OsName = (Get-WmiObject Win32_OperatingSystem).Caption

Write-Output "Platform is $OsName"


. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Dav1d.Vcpkg -Version (Get-ChildItem -Path .\packages\nuget\Kotek.Packages.Dav1d.Vcpkg\ -Force -Recurse | Select-Object -First 1) -CompilerName $CompilerName