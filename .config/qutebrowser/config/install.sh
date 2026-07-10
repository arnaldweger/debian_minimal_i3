#!/usr/bin/env bash
# Sair imediatamente se um comando falhar
set -e

echo "=== Iniciando a configuração do Qutebrowser ==="

echo "=== Gerando arquivo de configuração do Qutebrowser ==="
mkdir -p "$USER_CONFIG_DIR/qutebrowser"
cat << 'EOF' > "$USER_CONFIG_DIR/qutebrowser/config.py"
config.load_autoconfig()

# AdBlock
c.content.blocking.enabled = True
c.content.blocking.method = "both"

# Corretor ortográfico
c.spellcheck.languages = ['pt-BR']

# Entrar automaticamente em modo INSERT ao clicar em campos
c.input.insert_mode.auto_enter = True

# Permanecer em INSERT enquanto estiver editando
c.input.insert_mode.auto_leave = False

# Continuar em INSERT após carregamentos e mudanças na página
c.input.insert_mode.auto_load = True
c.input.insert_mode.leave_on_load = False

# Restaurar abas ao abrir o navegador
c.auto_save.session = True
EOF

echo "=== Configuração do Qutebrowser gerada com sucesso ==="