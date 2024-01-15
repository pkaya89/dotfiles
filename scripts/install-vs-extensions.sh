#!/bin/bash

while read extension; do
    code --install-extension "$extension"
done < vs/vscode-extensions.txt
