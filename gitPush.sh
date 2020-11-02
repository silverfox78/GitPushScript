#!/bin/bash
contador=0
archivos=()

for file in `git status --porcelain | sed s/^...//`
    do
        contador=$((contador+1))
        echo "$contador.- Archivo: $file"
    done

if [[ $contador == 0 ]]
then
    echo "No hay archivos que subir..."
fi