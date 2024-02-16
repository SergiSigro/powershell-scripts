# Obtiene la fecha actual en formato año, mes, día
$fecha = Get-Date -Format "yyyyMMdd"

# Busca todos los archivos JPG en el directorio actual
$archivosJPG = Get-ChildItem -Filter "*.jpg"

# Recorre cada archivo y lo renombra
foreach ($archivo in $archivosJPG) {
    # Construye el nuevo nombre con el prefijo de la fecha
    $nuevoNombre = $fecha + "-" + $archivo.Name

    # Renombra el archivo
    Rename-Item -Path $archivo.FullName -NewName $nuevoNombre
}