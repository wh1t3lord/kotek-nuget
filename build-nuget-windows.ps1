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


$VersionFolderDav1dName = ""
$VersionFolderDirectXMathName = ""
if ($Latest -eq "1") {
    $VersionFolderDav1dName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Dav1d.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderDirectXMathName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.DirectXMath.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
}
else {
    $VersionFolderDav1dName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Dav1d.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderDirectXMathName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.DirectXMath.Vcpkg\ -Force -Recurse | Select-Object -First 1)
}

. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Dav1d.Vcpkg -Version $VersionFolderDav1dName -CompilerName $CompilerName
. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.DirectXMath.Vcpkg -Version $VersionFolderDirectXMathName -CompilerName $CompilerName
