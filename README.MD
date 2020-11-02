# GitPush - Script de Ejemplo

| Dato       | Informacion                                                             |
|------------|-------------------------------------------------------------------------|
| Url Medium | https://samuelbarrerabastidas.medium.com/simplificando-git-cbfaa259d1c2 |


------


# GIST del Articulo


| Nombre Gist              | Url                                                                  |
|--------------------------|----------------------------------------------------------------------|
| pushBasic.sh             | https://gist.github.com/silverfox78/d9ef743bf55dd876fa18131ee87e23d1 |
| gitPushDatos.sh          | https://gist.github.com/silverfox78/256427df9d1e8388f51580c9a33c05fa |
| ReadmeGitPush.MD         | https://gist.github.com/silverfox78/419e1ca9b5f9e1788e21c0c95805c3eb |
| gitPushAddMessage.sh     | https://gist.github.com/silverfox78/0cca2296355b3ccfd80b7c5fc4e5a4a8 |
| ReadmeActualizado.MD     | https://gist.github.com/silverfox78/55606ef70772e232002d7bd498491e30 |
| gitPushCommit.sh         | https://gist.github.com/silverfox78/0816dbc2fcdafe880b18bcc85d4578e5 |
| gitPushEvaluacion.sh     | https://gist.github.com/silverfox78/c7a42430b8fe31d2bc0493d6c41d17fc |
| gitPushRepoLimpio.sh     | https://gist.github.com/silverfox78/c4b2147cbc7de2d0cc777728627ac437 |
| gitPushRepoConCambios.sh | https://gist.github.com/silverfox78/d0a1d7a9f55eb81e3b7ab382876d9562 |
| gitPushOK.sh             | https://gist.github.com/silverfox78/db83296bdca29abb1b83374cb2d211f5 |
| pushRevisar.sh           | https://gist.github.com/silverfox78/8ea0f5f885e8d294d740271c4e047999 |
| pushError.sh             | https://gist.github.com/silverfox78/30b0f9ce80be52c7e615988849911a52 |


----- 


## Creacion de archivos de Ejemplo


``` bash

touch PRIDE.TXT GREED.TXT LUST.TXT ENVY.TXT GLUTTONY.TXT WRATH.TXT SLOTH.TXT

```


------


## Listado de colores


``` bash

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

```


-----


## Script de PUSH

``` bash

#!/bin/bash

##############################
#                            #
#     LISTADO DE COLORES     #
#                            #
##############################

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

repositorioLimpio()
{
    reset
    V_LINEA=$(printf "%-50s" "#")
    echo -e "$Green${V_LINEA// /#}\n"
    echo -e "$Green\tEL REPOSITORIO NO POSEE CAMBIOS...\n"
    echo -e "$Green${V_LINEA// /#}\n$Color_Off"
}

repositorioConCambios()
{
    reset
    V_LINEA=$(printf "%-50s" "#")
    echo -e "$Yellow${V_LINEA// /#}\n"
    echo -e "$Yellow\tSE DETECTAN CAMBIOS\n"
    echo -e "$Cyan\t\t$contador -$Blue Archivo(s)\n"
    echo -e "$Yellow${V_LINEA// /#}\n\n$Color_Off"

    echo -e "$Green\tRespositorio: $Color_Off$v_REPO"
    echo -e "$Green\tProyecto: $Color_Off$v_PROYECTO"
    echo -e "$Green\tUsuario GIT: $Color_Off$v_USER"
    echo -e "$Green\tEmail GIT: $Color_Off$v_MAIL"
    echo -e "$Green\tUsuario: $Color_Off$V_USUARIO"
    echo -e "$Green\tMaquina: $Color_Off$HOSTNAME"

    echo -e "$Yellow\n\tMensaje:\n\t> $Color_Off$V_MENSAJE\n\n"

    echo -e "$Green\tLista de Archivos:"
    v_tmp=0
    for fileTmp in "${archivos[@]}"
        do
            v_tmp=$((v_tmp+1))
            echo -e "$Green\t\t$v_tmp.- $Color_Off$fileTmp"
        done

    echo -e "$Color_Off\n\n"
}

pushOK()
{
    V_LINEA=$(printf "%-70s" "#")
    echo -e "$Green${V_LINEA// /#}\n"
    echo -e "$Green\t[ - O K - ]\tSE HA SUBIDO CON EXITO LOS ARCHIVOS\n"
    echo -e "$Green${V_LINEA// /#}\n$Color_Off"
}

pushRevisar()
{
    V_LINEA=$(printf "%-70s" "#")
    echo -e "$Purple${V_LINEA// /#}\n"
    echo -e "$Purple\t[ - REVISAR - ]\tEXISTEN DIFERENCIAS EN EL REPOSITORIO\n"
    echo -e "$Purple\t\t\tVALIDE LOS CAMBIOS...\n"
    echo -e "$Purple\n\t(Verificar si no se edito el README.MD)\n\n"
    echo -e "$Purple${V_LINEA// /#}\n$Color_Off"
}

pushError()
{
    V_LINEA=$(printf "%-60s" "#")
    echo -e "$Red${V_LINEA// /#}\n"
    echo -e "$Red\t[ - ERROR - ]\tERROR EN EL VERSIONAMIENTO\n"
    echo -e "$Red\t\t\tVERIFIQUE EL ERROR\n"
    echo -e "$Red${V_LINEA// /#}\n\n$Color_Off"
    echo -e "$Yellow\tMensaje:$White\n\t$V_GITPUSH\n$Color_Off"
}

contador=0
archivos=()

for file in `git status --porcelain | sed s/^...//`
    do
        contador=$((contador+1))
        archivos+=($file)
    done

if [[ $contador == 0 ]]
then
    repositorioLimpio
else
    V_MENSAJE="$1 - Se modificaron $contador archivo(s) - ( "

    contador=0
    for file in "${archivos[@]}"
        do
            contador=$((contador+1))
            V_MENSAJE="$V_MENSAJE$file "
        done

    V_MENSAJE="$V_MENSAJE)"

    v_REPO=$(git config remote.origin.url 2>&1)
    v_USER=$(git config user.name 2>&1)
    v_MAIL=$(git config user.email 2>&1)
    v_PROYECTO=$(printf "$v_REPO" | sed 's/.*\///')
    V_USUARIO=$(whoami)
    V_FECHA=$(date +'%d/%m/%Y')
    V_HORA=$(date +'%H:%M:%S:%3N')
    V_USUARIO=$(whoami)
    V_LOG=$(printf "%b\n" "| $V_FECHA | $V_HORA | $V_MENSAJE | $HOSTNAME | $V_USUARIO |")

    echo "$V_LOG">> README.MD

    repositorioConCambios

    V_GITADD=$(git add . 2>&1)
    V_GITCOMMIT=$(git commit -am "$V_MENSAJE" 2>&1)
    V_GITPUSH=$(git push origin main --porcelain 2>&1)
    
    if [[ "$V_GITPUSH" == *"Done"* ]]
    then
        V_HASH_COMMIT=$(git rev-parse HEAD)
        V_CONT=0
        for fileCommit in `git diff-tree --no-commit-id --name-only -r $V_HASH_COMMIT`
        do
            V_CONT=$((V_CONT+1))
        done

        #Se suma el README.MD
        contador=$((contador+1))

        #Evaluamos el repositorio
        limpio=true
        for file in `git status --porcelain | sed s/^...//`
        do
            limpio=false
        done

        if [ \( "$V_CONT" -eq "$contador" -a "$limpio" = true \) ] ; then
            pushOK
        else
            pushRevisar
        fi
    else
        pushError
        git reset .
    fi
fi

```



------


## Actualizaciones del proyecto


| Fecha | Hora | Mensaje | Dispositivo | Usuario |
|-------|------|---------|-------------|---------|
| 02/11/2020 | 17:53:51:474 | Se inicializa el repositorio - Se modificaron 9 archivo(s) - ( ENVY.TXT GLUTTONY.TXT GREED.TXT LUST.TXT PRIDE.TXT README.MD SLOTH.TXT WRATH.TXT gitPush.sh ) | PonyoBook | sbarr |
| 02/11/2020 | 18:06:11:029 | Se actualiza el gitPush y Readme - v2 - Se modificaron 2 archivo(s) - ( README.MD gitPush.sh ) | PonyoBook | sbarr |
| 02/11/2020 | 18:08:05:517 | Se actualiza pecado: Gluttony - Se modificaron 1 archivo(s) - ( GLUTTONY.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:08:35:741 | Se actualiza pecado: Greed - Se modificaron 1 archivo(s) - ( GREED.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:08:56:853 | Se actualiza pecado: Lust - Se modificaron 1 archivo(s) - ( LUST.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:09:43:559 | Se actualiza pecado: Pride - Se modificaron 1 archivo(s) - ( PRIDE.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:10:11:723 | Se actualiza pecado: Sloth - Se modificaron 1 archivo(s) - ( SLOTH.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:10:38:645 | Se actualiza pecado: Wrath - Se modificaron 1 archivo(s) - ( WRATH.TXT ) | PonyoBook | sbarr |
| 02/11/2020 | 18:13:26:173 | Se actualiza el README, con la URL del Articulo - Se modificaron 1 archivo(s) - ( README.MD ) | PonyoBook | sbarr |
