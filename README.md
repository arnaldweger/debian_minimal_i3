# Debian Minimal i3

Um script de pós-instalação para transformar um Debian puro em um ambiente de desktop minimalista, performático e funcional usando o gerenciador de janelas i3wm.

## 🛠️ Componentes inclusos
* **WM:** i3-wm (Barra fixada no topo)
* **Barra:** i3status
* **Launcher:** j4-dmenu-desktop + dmenu
* **Terminal:** Kitty
* **Notificações:** Dunst
* **Login Manager:** Ly (TUI)
* **Editor de Texto:** Micro
* **Captura de Tela:** Flameshot
* **Gerenciador de Arquivos:** Thunar + File Roller (Compactador)

## 🚀 Como instalar

Após realizar a instalação limpa do **Debian (netinst)** sem ambiente gráfico, instale o `git` (caso não tenha), clone este repositório e execute o script:

```bash
# Instalar o git se necessário
sudo apt update && sudo apt install -y git

# Clonar o repositório
git clone https://github.com/arnaldweger/debian_minimal_i3.git
cd debian_minimal_i3

# Dar permissão e rodar o instalador
chmod +x install.sh
./install.sh
# debian_minimal_i3
