# InterPhish

![interphish](https://github.com/user-attachments/assets/4943e0c2-c103-4c20-a10c-0644c4a55834)



InterPhish es una herramienta ofensiva diseñada para generar ataques de phishing, enfocados en engañar a usuarios de plataformas bancarias, específicamente Interbank. InterPhish permite crear enlaces falsos que simulan con precisión las páginas de inicio de sesión de Interbank, engañando a la víctima para que interactúe y entregue sus credenciales de acceso.

Con un sistema automatizado, la herramienta genera un enlace que parece legítimo y lo envía a la víctima a través de múltiples vectores (email, SMS, redes sociales). Una vez que la víctima ingresa sus datos en la página falsa, estos se almacenan en tiempo real, permitiendo al atacante acceder a las credenciales de manera rápida y discreta.

InterPhish está equipada con opciones avanzadas de evasión, disfrazando la URL maliciosa para que pase desapercibida en sistemas de detección. Además, ofrece un panel de control para visualizar interacciones con las víctimas, facilitando la administración de múltiples ataques simultáneos. Ideal para simulaciones de phishing orientadas a penetrar sistemas bancarios bajo un esquema de evaluación de seguridad ofensiva.

# Requisitos

* openssh
* git
* wget
* curl
* cloudflared
* ngrok

# Instalación

$ apt update && apt upgrade -y

$ pkg install git 

$ pkg install openssh

$ pkg install cloudflared

$ git clone https://github.com/edgarluck/InterPhish.git

$ cd InterPhish

$ chmod +x interphish.sh

$ bash interphish.sh
