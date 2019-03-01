
function Select-Something
{
  param
  (
    [Object]
    [Parameter(Mandatory=$true, ValueFromPipeline=$true, HelpMessage="Data to process")]
    $InputObject
  )
  process
  {
    $InputObject.BlockSize=(($InputObject.FreeSpace)/($InputObject.Size))*100;$InputObject.FreeSpace=($InputObject.FreeSpace/1GB);$InputObject.Size=($InputObject.Size/1GB);$InputObject
  }
}

gwmi Win32_LogicalDisk -Filter "DeviceID='C:'" | select Name, FileSystem,FreeSpace,BlockSize,Size | Select-Something| Format-Table Name, {n='FS';e={$_.FileSystem}},@{n='Free, Gb';e={'{0:N2}'-f
$_.FreeSpace}}, @{n='Free,%';e={'{0:N2}'-f $_.BlockSize}} -AutoSize