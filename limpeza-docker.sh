#!/bin/bash

# Caminho para log
LOGFILE="$HOME/.docker_cleanup.log"

# Pega o uso atual
USO=$(docker system df)

# Exibe info via GUI
zenity --question \
  --title="Limpeza de Docker" \
  --width=400 \
  --text="🧹 Detalhes do uso atual:\n\n$USO\n\nDeseja remover tudo que não está em uso?\n\n(imagens não utilizadas, containers parados, volumes e cache de build)"

# Se usuário clicar em OK
if [[ $? -eq 0 ]]; then
  {
    echo "🧹 Limpeza executada em $(date)"
    docker system prune -a --volumes --force
    docker builder prune --all --force
    echo "✅ Fim da limpeza em $(date)"
    echo "-------------------------------------------"
  } >> "$LOGFILE"
  zenity --info --title="Docker Cleanup" --text="✅ Limpeza concluída!\n\nLog salvo em: $LOGFILE" 2>/dev/null
else
  echo "❌ Cancelado em $(date)" >> "$LOGFILE"
fi
