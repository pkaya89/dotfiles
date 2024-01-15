#!/usr/bin/env bash

# Check if Homebrew is installed
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew already installed."
fi

# Install Homebrew formulae
while read -r formula; do
    brew install "$formula"
done < brew/brew-formulae.txt

# Install Homebrew casks
while read -r cask; do
    brew install --cask "$cask"
done < brew/brew-casks.txt