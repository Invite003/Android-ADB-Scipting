#!/bin/bash

echo "Seleccione una opción:"
echo "1 - Deshabilitar múica" ### Estos son los paquetes de música
###com.planeth.gstomperproducer,com.planeth.rhythmkey,com.planeth.vabeast,com.soundcloud.android,com.maxrave.simpmusic,com.steinberg.cubasis3

echo "2 - habilitar modo música"
echo "3 - Salir"

read -p "Introduzca su elección: " choice

if [ "$choice" == "1" ]; then
        echo "Deshabilitando paquetes..."
    # Sustituye "com.ejemplo.paquete" por el nombre de los paquetes que deseas deshabilitar
    ### el que funciona es pm disable --user0 <nombre_del_packete>
    pm disable-user --user 0 com.planeth.gstomperproducer
    ###pm disable-user --user 0 com.planeth.rhythmkey ###Esta es la licencia no es recomendable desactivarla
    pm disable-user --user 0 com.planeth.vabeast
    pm disable-user --user 0 com.soundcloud.android
    pm disable-user --user 0 com.maxrave.simpmusic
    pm disable-user --user 0 com.steinberg.cubasis3
   
    
    echo "Modo música deshabilitado."

elif [ "$choice" == "2" ]; then
    echo "Habilitando paquetes..."
    pm enable-user --user 0 com.planeth.vabeast
    pm enable-user --user 0 com.soundcloud.android
    pm enable-user --user 0 com.maxrave.simpmusic
    pm enable-user --user 0 com.steinberg.cubasis3


elif [ "$choice" == "3" ]; then
    echo "Saliendo del script."
    exit 0
else
    echo "Opción no válida."
fi
