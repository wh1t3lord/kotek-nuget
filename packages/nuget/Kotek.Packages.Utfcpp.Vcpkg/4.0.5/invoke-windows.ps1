param (
    [Parameter(Mandatory=$true)]
    [string] $CompilerName
)

$Output = "out"

$isWin11 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 11"
$isWin10 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 10"
$isWin7 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 7"

$Arch = (Get-Process -Id $PID).StartInfo.EnvironmentVariables["PROCESSOR_ARCHITECTURE"];

$PlatformBit = ""
$PlatformName = ""

if ($Arch -eq 'x86') {
    $PlatformBit = "x86"
}
elseif ($Arch -eq 'amd64') {
    $PlatformBit = "x64"
}

nuget pack $PSScriptRoot\metapackage.nuspec -OutputDirectory $Output
nuget pack $PSScriptRoot\runtimes.nuspec -OutputDirectory $Output

# TODO: add other windows operating system versions
if ($isWin11) {
    Write-Output "executing for Windows 11 with compiler $CompilerName | platform $Arch ($PlatformBit)"

    $PlatformName = "win11"

    nuget pack $PSScriptRoot\runtimes.win11-msvc-x64.nuspec -OutputDirectory $Output
    nuget pack $PSScriptRoot\runtimes.win10-msvc-x64.nuspec -OutputDirectory $Output

}
elseif ($isWin10) {
    Write-Output "executing for Windows 10 with compiler $CompilerName | platform $Arch ($PlatformBit)"

    $PlatformName = "win10"

    nuget pack $PSScriptRoot\runtimes.win10-msvc-x64.nuspec -OutputDirectory $Output
    nuget pack $PSScriptRoot\runtimes.win11-msvc-x64.nuspec -OutputDirectory $Output
}
