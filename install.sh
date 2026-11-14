#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
for f in .zshrc .tmux.conf; do
  [ -e ~/$f ] && [ ! -L ~/$f ] && mv ~/$f ~/$f.bak
  ln -sf "$DIR/$f" ~/$f && echo "Linked $f"
done
