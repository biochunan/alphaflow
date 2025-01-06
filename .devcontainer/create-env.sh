#!/bin/zsh

#!/bin/zsh

# init conda
conda init zsh

# source .zshrc to activate conda
source $HOME/.zshrc

# turn off conda auto-activate base
conda config --set auto_activate_base false

# create env
envname=alphaflow
conda create -n $envname python=3.9 pip=23.1.2 -y \
  && conda activate $envname

# install dependencies
pip install numpy==1.21.2 pandas==1.5.3
pip install torch==1.12.1+cu113 -f https://download.pytorch.org/whl/torch_stable.html
pip install biopython==1.79 \
    dm-tree==0.1.6 \
    modelcif==0.7 \
    ml-collections==0.1.0 \
    scipy==1.7.1 \
    absl-py \
    einops
pip install wandb fair-esm mdtraj==1.9.9
pip install "pytorch_lightning<1.3.0"

# ------------------
# install openfold
# ------------------
# option 1: install openfold from github
pip install 'openfold @ git+https://github.com/aqlaboratory/openfold.git@103d037'

# option 2: install openfold from wheel
pip install gdown
gdown 1EiPVWMlj7GnfqkU_XT_o-qQJVd8sPv7J
tar -zxf openfold.103d037.tar.gz
cd openfold
pip install .
cd ..
rm -rf openfold
rm openfold.103d037.tar.gz
