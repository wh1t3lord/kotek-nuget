param (
    [Parameter(Mandatory=$true)]
    [string] $Path
)

$directories = Get-ChildItem $Path -Directory

for ($i=0; $i -lt $directories.Count; $i++) {
    $outfile = $directories[$i].FullName
    
    if ($outfile -match "boost") {
        Write-Output $outfile
    }
}