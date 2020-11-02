#!/bin/bash
contador=0
archivos=()

for file in `git status --porcelain | sed s/^...//`
    do
        contador=$((contador+1))
        archivos+=($file)
        echo "$contador.- Archivo: $file"
    done

if [[ $contador == 0 ]]
then
    echo "No hay archivos que subir..."
else
    v_REPO=$(git config remote.origin.url 2>&1)
    v_USER=$(git config user.name 2>&1)
    v_MAIL=$(git config user.email 2>&1)
    v_PROYECTO=$(printf "$v_REPO" | sed 's/.*\///')
    V_USUARIO=$(whoami)

    echo "Respositorio: $v_REPO"
    echo "Proyecto: $v_PROYECTO"
    echo "Usuario GIT: $v_USER"
    echo "Email GIT: $v_MAIL"
    echo "Usuario: $V_USUARIO"
    echo "Maquina: $HOSTNAME"

    V_MENSAJE="$1 - Se modificaron $contador archivo(s) - ( "

    contador=0
    for file in "${archivos[@]}"
        do
            contador=$((contador+1))
            V_MENSAJE="$V_MENSAJE$file "
        done

    V_MENSAJE="$V_MENSAJE)"

    V_FECHA=$(date +'%d/%m/%Y')
    V_HORA=$(date +'%H:%M:%S:%3N')
    V_USUARIO=$(whoami)
    V_LOG=$(printf "%b\n" "| $V_FECHA | $V_HORA | $V_MENSAJE | $HOSTNAME | $V_USUARIO |")

    echo "$V_LOG">> README.MD

    V_GITADD=$(git add . 2>&1)
    V_GITCOMMIT=$(git commit -am "$V_MENSAJE" 2>&1)
    V_GITPUSH=$(git push origin main --porcelain 2>&1)
    
    if [[ "$V_GITPUSH" == *"Done"* ]]
    then
        echo "Cambio subido con Exito"
    else
        echo "Error al subir los cambios"
        echo "Mensaje: $V_GITPUSH"
        git reset .
    fi
fi