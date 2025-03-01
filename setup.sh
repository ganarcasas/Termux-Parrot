#!/bin/bash

green='\033[0;32m'
clear='\033[0m'

apt update && apt install figlet

clear

figlet Termux-Parrot

echo "Created by Ganarcasas Apps"

echo "This script will install ParrotOs."

read -p "Do you want to proceed? (y/n): " response

if [[ "$response" == "y" || "$response" == "Y" ]]; then
    clear
    apt install proot-distro
    cat > $PREFIX/etc/proot-distro/parrot.sh <<EOL
#!/bin/bash

DISTRO_NAME="ParrotOS"
TARBALL_URL['aarch64']="https://github.com/ganarcasas/Termux-Parrot/releases/download/rootfs/aarch64.tar.xz"
TARBALL_SHA256['aarch64']="3ebaa78bcd02d57654eea71e2c1e32e1cdb15bc0cbb57110a35b2e6e39714182"
EOL

chmod +x $PREFIX/etc/proot-distro/parrot.sh

clear

proot-distro install parrot

clear

figlet Termux-Parrot

echo "Installation Finished!"
printf "Run: ${green} proot-distro login parrot${clear}\n"
printf "Then Run: ${green}apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7A8286AF0E81EE4A${clear}"

elif [[ "$response" == "n" || "$response" == "N" ]]; then
    exit
else
    echo "Invalid response. Please enter 'y' or 'n'."
fi
