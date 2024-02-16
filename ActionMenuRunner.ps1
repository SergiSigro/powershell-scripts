while ($true) {
    # Muestra el menú
    Write-Host "Seleccione una opcion:"
    Write-Host "1. Listar los servicios arrancados."
    Write-Host "2. Mostrar la fecha del sistema."
    Write-Host "3. Ejecutar el Bloc de notas."
    Write-Host "4. Ejecutar la Calculadora."
    Write-Host "5. Salir."
    
    # Lee la opción del usuario
    $opcion = Read-Host "Introduzca el numero de la opcion"
    
    switch ($opcion) {
        "1" {
            Write-Host "`nListando los servicios arrancados...`n"
            Get-Service | Where-Object {$_.Status -eq 'Running'} | Format-Table Name, DisplayName, Status
        }
        "2" {
            $fecha = Get-Date
            Write-Host "`nMostrando la fecha del sistema...`n$fecha`n"
        }
        "3" {
            Write-Host "`nEjecutando el Bloc de notas...`n"
            Start-Process notepad
        }
        "4" {
            Write-Host "`nEjecutando la Calculadora...`n"
            Start-Process calc
        }
        "5" {
            Write-Host "`nSaliendo...`n"
            exit
        }
        default {
            Write-Host "`nOpcion no valida. Por favor, intente de nuevo."
        }
    }
    #Delay para hacer más user-firendly el refesco del menú
    Start-Sleep -Milliseconds 500
}
