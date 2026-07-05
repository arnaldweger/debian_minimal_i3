#!/usr/bin/env bash

set -e

echo "=== Iniciando a instalação do Debian Minimal i3 ==="

# 1. Atualizar e instalar pacotes essenciais
sudo apt update
sudo apt install -y \
    i3-wm i3status j4-dmenu-desktop dmenu kitty dunst micro \
    flameshot file-roller thunar git xinit xserver-xorg-core xserver-xorg \
    build-essential libpam0g-dev libxcb-xoutputs0-dev

# 2. Instalação do Ly Display Manager
echo "=== Instalando o Ly Display Manager ==="
cd /tmp
if [ -d "ly" ]; then rm -rf ly; fi
git clone --recurse-submodules https://github.com/fairyglade/ly.git
cd ly
make
sudo make install
sudo systemctl enable ly.service

# Return to script directory
cd - > /dev/null

# 3. Copiar as configurações para o diretório do usuário
echo "=== Aplicando configurações (Dotfiles) ==="
mkdir -p "$HOME/.config"

# Copia recursivamente respeitando os arquivos do repositório
cp -r .config/* "$HOME/.config/"

echo "=== Instalação concluída com sucesso! ==="
echo "Por favor, reinicie a máquina."
