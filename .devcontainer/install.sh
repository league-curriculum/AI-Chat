#!/bin/bash

APPEND_BLOCK=$(cat <<'EOF'

# Custom newline prompt from dotfiles
export NEWLINE=$'\n'
export PS1="${PS1}${NEWLINE}$ "
EOF
)

# Add block if not already in .zshrc
if ! grep -Fq "Custom newline prompt from dotfiles" ~/.zshrc; then
  echo "$APPEND_BLOCK" >> ~/.zshrc
fi

# Add block if not already in .bashrc
if ! grep -Fq "Custom newline prompt from dotfiles" ~/.bashrc; then
  echo "$APPEND_BLOCK" >> ~/.bashrc
fi