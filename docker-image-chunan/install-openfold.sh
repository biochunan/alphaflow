#!/bin/zsh

# init conda
conda init zsh

# source .zshrc to activate conda
source $HOME/.zshrc

conda activate alphaflow

# ------------------
# install openfold
# ------------------
# option 1: install openfold from github
pip install 'openfold @ git+https://github.com/aqlaboratory/openfold.git@103d037'

# # option 2: install openfold from wheel
# pip install gdown
# export PATH="/home/vscode/.local/bin:$PATH"  # gdown is installed in .local/bin

# # download openfold
# gdown 1EiPVWMlj7GnfqkU_XT_o-qQJVd8sPv7J
# wait $!

# # extract openfold
# pushd $HOME
# tar -zxf openfold.103d037.tar.gz

# # install openfold
# pushd openfold
# pip install .
# popd

# # clean up
# rm -rf openfold
# rm openfold.103d037.tar.gz
