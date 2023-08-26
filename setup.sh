#!/bin/bash

# Actualizar paquetes
sudo apt update

# Instalar curl, git, zsh y tmux
sudo apt install -y curl git zsh tmux

# Instalar oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Instalar powerlevel10k (p10k) pero no configurarlo
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Añadir configuraciones desde .zshrc a tu archivo zsh actual y sobrescribir configuraciones de p10k
cat terminal/.zshrc >> $HOME/.zshrc
cp terminal/.p10k.zsh $HOME/.p10k.zsh

# Sobrescribir configuraciones de tmux
cp terminal/.tmux.config $HOME/.tmux.conf

echo "Instalación y configuración completas."
