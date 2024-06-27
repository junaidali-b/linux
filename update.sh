#!/bin/bash
clear
echo "Pacman, yay and conda packages will now update."
sudo pacman -Syu
clear
yay -Syu
clear
sudo pacman -Sc
yay -Sc
clear
conda activate ml
conda update --all
conda deactivate
clear
echo "Update complete, here's a summary of the updated system:"
neofetch
