# Obtiene todos los archivos en el directorio actual
$archivos = Get-ChildItem -File

# Filtra los archivos que ocupan más de 1024 bytes
$archivosFiltrados = $archivos | Where-Object { $_.Length -gt 1024 }

# Muestra los archivos filtrados
$archivosFiltrados | ForEach-Object { Write-Output "$($_.Name) - $($_.Length) bytes" }