#!/bin/bash

clear

#Renaming the terminal tab
echo -ne "\033]30;System Update\007"

echo "Pacman, yay and conda packages will now update."
yes | sudo pacman -Syu
clear
yes | yay -Syu
clear
yes | sudo pacman -Sc
yes | yay -Sc
clear
yes | conda update conda
conda activate ml
yes | conda update --all
conda deactivate
clear
echo "Update complete, here's a summary of the updated system:"
echo -ne "\033]30;%d : %n\007"
neofetch
