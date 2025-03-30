#!/system/bin/sh

# Listar todos los paquetes de aplicaciones
for package in $(pm list packages | cut -f 2 -d ":"); do
    # Limpiar la caché de la aplicación
    pm clear "$package"
    
    # Verificar si el comando fue exitoso
    if [ $? -eq 0 ]; then
        echo "Success: Cleared cache for $package"
    else
        echo "Failed: Could not clear cache for $package"
    fi
done
