# 🧹 Docker Cleanup GUI

![Shell Script](https://img.shields.io/badge/script-bash-blue?logo=gnu-bash)
![License](https://img.shields.io/badge/license-MIT-green)
![Powered by Zenity](https://img.shields.io/badge/UI-Zenity-orange?logo=gtk)

Uma ferramenta simples de limpeza de Docker com interface gráfica via **Zenity**, logs automáticos e agendamento via `cron`.

## 🚀 Funcionalidades

- Mostra uso atual de disco pelo Docker
- Interface gráfica com confirmação via Zenity
- Limpa imagens, containers, volumes e cache não utilizados
- Gera log detalhado em `~/.docker_cleanup.log`
- Pode ser agendado com `cron` para execução automática

## 📦 Requisitos

- Docker instalado
- `zenity` (para a GUI)
- `cron` (para agendamento opcional)

Instale com:

```bash
sudo apt install zenity cron -y
```

## 📦 Instalação

```bash
git clone https://github.com/seu-usuario/docker-cleanup-gui.git
cd docker-cleanup-gui
chmod +x docker_gui_cleanup.sh
./docker_gui_cleanup.sh
```

## 📅 Agendamento diário via cron

Para executar automaticamente às 18h:

```bash
crontab -e
0 18 * * * /home/usuario/limpa_docker/limpa_docker.sh
```

## 📜 Logs

Logs são gerados em `~/.docker_cleanup.log`.

## 🛠️ Desinstalação

```bash
rm -rf docker-cleanup-gui
```
