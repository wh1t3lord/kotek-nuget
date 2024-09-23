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
$VersionFolderCgltfName = ""
$VersionFolderEigen3Name = ""
$VersionFolderEnttName = ""
$VersionFolderEtlName = ""
$VersionFolderGLFW3Name = ""
$VersionFolderGLMName = ""
$VersionFolderKTXName = ""
$VersionFolderMimallocName = ""
$VersionFolderShadercName = ""
$VersionFolderSpdlogName = ""
$VersionFolderSpirvReflectName = ""
$VersionFolderSpirvToolsName = ""
$VersionFolderOneTbbName = ""
$VersionFolderTracyName = ""
$VersionFolderUtfcppName = ""

if ($Latest -eq "1") {
    $VersionFolderDav1dName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Dav1d.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderDirectXMathName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.DirectXMath.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderCgltfName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Cgltf.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderEigen3Name = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Eigen3.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderEnttName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Entt.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderEtlName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Etl.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderGLFW3Name = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Glfw3.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderGLMName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Glm.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderKTXName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Ktx.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderMimallocName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Mimalloc.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderShadercName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Shaderc.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderSpdlogName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spdlog.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderSpirvReflectName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spirv-reflect.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderSpirvToolsName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spirv-tools.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderOneTbbName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.TBB.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderTracyName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Tracy.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
    $VersionFolderUtfcppName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Utfcpp.Vcpkg\ -Force -Recurse | Select-Object -Last 1)
}
else {
    $VersionFolderDav1dName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Dav1d.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderDirectXMathName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.DirectXMath.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderCgltfName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Cgltf.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderEigen3Name = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Eigen3.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderEnttName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Entt.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderEtlName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Etl.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderGLFW3Name = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Glfw3.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderGLMName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Glm.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderKTXName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Ktx.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderMimallocName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Mimalloc.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderShadercName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Shaderc.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderSpdlogName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spdlog.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderSpirvReflectName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spirv-reflect.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderSpirvToolsName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Spirv-tools.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderOneTbbName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.TBB.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderTracyName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Tracy.Vcpkg\ -Force -Recurse | Select-Object -First 1)
    $VersionFolderUtfcppName = (Get-ChildItem -Directory -Path .\packages\nuget\Kotek.Packages.Utfcpp.Vcpkg\ -Force -Recurse | Select-Object -First 1)
}

#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Dav1d.Vcpkg -Version $VersionFolderDav1dName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.DirectXMath.Vcpkg -Version $VersionFolderDirectXMathName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Cgltf.Vcpkg -Version $VersionFolderCgltfName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Eigen3.Vcpkg -Version $VersionFolderEigen3Name -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Entt.Vcpkg -Version $VersionFolderEnttName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Etl.Vcpkg -Version $VersionFolderETlName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Glfw3.Vcpkg -Version $VersionFolderGlfw3Name -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Glm.Vcpkg -Version $VersionFolderGLMName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Ktx.Vcpkg -Version $VersionFolderKTXName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Mimalloc.Vcpkg -Version $VersionFolderMimallocName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Shaderc.Vcpkg -Version $VersionFolderShadercName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Spdlog.Vcpkg -Version $VersionFolderSpdlogName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Spirv-reflect.Vcpkg -Version $VersionFolderSpirvReflectName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Spirv-tools.Vcpkg -Version $VersionFolderSpirvToolsName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.TBB.Vcpkg -Version $VersionFolderOneTbbName -CompilerName $CompilerName
#. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Tracy.Vcpkg -Version $VersionFolderTracyName -CompilerName $CompilerName
. .\build-windows.ps1 -Type nuget -Name Kotek.Packages.Utfcpp.Vcpkg -Version $VersionFolderUtfcppName -CompilerName $CompilerName