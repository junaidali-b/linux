#!/bin/bash

#Installing conda
cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.06-1-Linux-x86_64.sh
bash Anaconda3-2024.06-1-Linux-x86_64.sh
eval "$(/home/junaid/anaconda3/bin/conda shell.bash hook)"
source ~/.bashrc
conda init
conda config --set auto_activate_base true

#Creating conda environment
conda create --name ml python=3.10
conda activate ml

#Installing conda packages

#Part 1
conda install -c conda-forge airflow apache-airflow arrow beautifulsoup4 bottleneck cudatoolkit dbt docker-py email-validator google-auth jedi

#Part 2
conda install -c conda-forge jupyter_core jupyterlab keras matplotlib mysql-libs mysql-common numpy openshift-cli openssl pandas pip plotnine

#Part 3
conda install pytorch:pytorch

#Part 4
conda install -c conda-forge r-base scikit-learn scipy seaborn spyder sqlite tensorflow wget yaml

#Updating all packages
#This step will upgrade or downgrade all packages to work with each other
conda update --all 

#Exiting environment
conda deactivate

exit
