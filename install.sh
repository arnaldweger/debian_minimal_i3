#!/usr/bin/env bash
set -e
export USER_CONFIG_DIR="$HOME/.config"

source ./scripts/00-pacotes.sh
source ./.config/i3/config
source ./.config/i3status/config
source ./.config/dunst/dunstrc
source ./.config/qutebrowser/config

echo "=== Instalação concluída! Reinicie a máquina. ==="
