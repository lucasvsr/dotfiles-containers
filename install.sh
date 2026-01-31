#!/usr/bin/env bash
set -e

echo "[dotfiles] Iniciando instalação..."

DOTFILES_DIR="$(pwd)"

# Lista de arquivos simples
FILES=(
  .bashrc
  .zshrc
  .gitconfig
)

for file in "${FILES[@]}"; do
  echo "[dotfiles] Linkando $file"
  ln -sf "$DOTFILES_DIR/$file" "$HOME/$file"
done

# Diretório .config: linka cada arquivo/diretório de config/ em ~/.config
mkdir -p "$HOME/.config"

echo "[dotfiles] Linkando configs para ~/.config"
for item in "$DOTFILES_DIR"/config/*; do
  [[ -e "$item" ]] || continue
  name=$(basename "$item")
  echo "[dotfiles] Linkando $name -> ~/.config/$name"
  ln -sf "$item" "$HOME/.config/$name"
done

echo "[dotfiles] Apagando config padrão do git"
rm -rf "$HOME/.gitconfig"

echo "[dotfiles] Instalação concluída!"
