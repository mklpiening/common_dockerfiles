#!/bin/bash
sudo apt update
sudo apt upgrade -y

rosdep update
rosdep install --from-paths src --ignore-src -y

/home/docker/.oh-my-zsh/tools/upgrade.sh