$srcRoot = '.\src'                     # relative to script directory
$versionFile = 'SharedAssemblyInfo.cs' # relative to $srcRoot
$outputPath = "$home\Dropbox\Packages"
$scriptRoot = "$home\Dropbox\Scripts"

. "$scriptRoot\New-Path.ps1" $outputPath

$version = . "$home\Dropbox\Scripts\Get-Version.ps1" (Join-Path $srcRoot $versionFile -Resolve)

. "$scriptRoot\Pack-Project.ps1" Utility $srcRoot $version $outputPath

