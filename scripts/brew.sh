#!/usr/bin/env bash

# Check if Homebrew is installed
if ! command -v brew >/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [ $? -eq 0 ]; then
        echo "Homebrew installation successful."
    else
        echo "Homebrew installation failed."
    fi
else
    echo "Homebrew already installed."
fi

