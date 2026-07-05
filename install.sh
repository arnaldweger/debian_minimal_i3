#!/usr/bin/env bash
set -e
export USER_CONFIG_DIR="$HOME/.config"

source ./scripts/00-pacotes.sh
source ./scripts/01-ly.sh
source ./scripts/config-i3.sh
source ./scripts/config-i3status.sh
source ./scripts/config-dunst.sh
source ./scripts/config-kitty.sh

echo "=== Instalação concluída! Reinicie a máquina. ==="
