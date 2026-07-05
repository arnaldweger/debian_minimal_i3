#!/usr/bin/env bash
set -e
export USER_CONFIG_DIR="$HOME/.config"

source ./scripts/00-pacotes.sh
source ./.config/config-i3.sh
source ./.config/config-i3status.sh
source ./.config/config-dunst.sh

echo "=== Instalação concluída! Reinicie a máquina. ==="
