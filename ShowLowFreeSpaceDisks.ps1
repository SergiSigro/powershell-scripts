param(
    [int]$FreeSpace
)

$disks = Get-WmiObject Win32_LogicalDisk -Filter "DriveType = 3"

foreach ($disk in $disks) {
    $freeSpaceGB = [math]::Round($disk.FreeSpace / 1GB, 0)
    $totalSizeGB = [math]::Round($disk.Size / 1GB, 0)
    $freeSpacePercentage = ($freeSpaceGB / $totalSizeGB) * 100

    if ($freeSpacePercentage -lt $FreeSpace) {
        Write-Output "Drive: $($disk.DeviceID)"
        Write-Output "Free Space: $freeSpaceGB GB"
        Write-Output "Total Size: $totalSizeGB GB"
        Write-Output "-----------------------------"
    }
}
