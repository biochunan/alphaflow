#!/bin/zsh

# init conda
conda init zsh

# source .zshrc to activate conda
source $HOME/.zshrc

# turn off conda auto-activate base
conda config --set auto_activate_base false

# option 1: install from a yaml file
conda env update -f $HOME/alphaflow-cu118.yaml

# option 2: install from scratch
# envname=alphaflow
# conda create -n $envname python=3.9 pip=23.1.2 -y \
#   && conda activate $envname

# # install dependencies
# pip install numpy==1.21.2 pandas==1.5.3
# pip install torch==1.12.1+cu113 -f https://download.pytorch.org/whl/torch_stable.html
# pip install biopython==1.79 \
#     dm-tree==0.1.6 \
#     modelcif==0.7 \
#     ml-collections==0.1.0 \
#     scipy==1.7.1 \
#     absl-py \
#     einops
# pip install wandb fair-esm mdtraj==1.9.9
# pip install "pytorch_lightning<1.3.0"
