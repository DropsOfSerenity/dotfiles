#!/bin/sh

if ! [ -x "$(command -v stow)" ]; then
    echo "Install stow..."
    exit 1
fi

stow emacs
stow git
