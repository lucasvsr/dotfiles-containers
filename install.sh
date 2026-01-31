#!/usr/bin/env bash
set -e

echo "[dotfiles] Iniciando instalação..."

DOTFILES_DIR="$(pwd)"

# Lista de arquivos simples
FILES=(
  .config
)

for file in "${FILES[@]}"; do
  echo "[dotfiles] Linkando $file"
  ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
done

echo "[dotfiles] Instalação concluída!"
