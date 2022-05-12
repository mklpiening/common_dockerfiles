#!/bin/bash
echo "copying rosws executable to ~/.local/bin/rosws ..."
cp rosws ~/.local/bin/rosws

mkdir -p ~/.local/share/rosws
echo "copying Dockerfile to ~/.local/share/rosws/Dockerfile ..."
cp Dockerfile ~/.local/share/rosws/Dockerfile

echo "copying postCreateCommand to ~/.local/share/rosws/postCreateCommand.sh ..."
cp postCreateCommand.sh ~/.local/share/rosws/postCreateCommand.sh

echo "copying devcontainer to ~/.local/share/rosws/devcontainer-template.json ..."
cp devcontainer-template.json ~/.local/share/rosws/devcontainer-template.json

echo "copying zshrc to ~/.local/share/rosws/zshrc ..."
cp zshrc ~/.local/share/rosws/zshrc

echo "installed successfully"