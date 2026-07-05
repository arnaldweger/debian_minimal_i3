#!/usr/bin/env bash

# Sair imediatamente se um comando falhar
set -e

echo "=== Atualizando repositórios ==="
sudo apt update

echo "=== Instalando pacotes essenciais ==="
sudo apt install -y \
    i3-wm i3status j4-dmenu-desktop dmenu kitty dunst micro \
    flameshot file-roller thunar git xinit xserver-xorg-core xserver-xorg \
    qutebrowser

echo "=== Pacotes instalados com sucesso ==="
