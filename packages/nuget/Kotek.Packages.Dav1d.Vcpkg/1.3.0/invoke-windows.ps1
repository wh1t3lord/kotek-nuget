param (
    [Parameter(Mandatory=$true)]
    [string] $CompilerName
)

$isWin11 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 11"
$isWin10 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 10"
$isWin7 = (Get-WmiObject Win32_OperatingSystem).Caption -Match "Windows 7"

$isX64 = (Get-WmiObject win32_operatingsystem | select osarchitecture).osarchitecture -eq "64-bit"

# TODO: add other windows operating system versions
if ($isWin11) {
    Write-Output "executing for Windows 11 with compiler $CompilerName"

    

}
elseif ($isWin10) {
    Write-Output "executing for Windows 10 with compiler $CompilerName"
}
