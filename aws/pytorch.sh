#!/bin/bash

# Ubuntu 16.04 - checked on aws g2

# https://gist.github.com/mjdietzx/fda9535e3246f0db39b0da80403265d1
wget http://us.download.nvidia.com/tesla/375.51/nvidia-driver-local-repo-ubuntu1604_375.51-1_amd64.deb
sudo dpkg -i nvidia-driver-local-repo-ubuntu1604_375.51-1_amd64.deb
sudo apt-get update
sudo apt-get -y install cuda-drivers

# https://aws.amazon.com/blogs/aws/new-p2-instance-type-for-amazon-ec2-up-to-16-gpus/
sudo nvidia-smi -pm 1
sudo nvidia-smi -acp 0
sudo nvidia-smi --auto-boost-permission=0
sudo nvidia-smi -ac 2505,875

# Reboot
sudo reboot

# Install pytorch
sudo apt-get -y install virtualenv
virtualenv -p python3 h
source ~/h/bin/activate
pip3 install http://download.pytorch.org/whl/cu80/torch-0.2.0.post1-cp35-cp35m-manylinux1_x86_64.whl

# Test
# https://discuss.pytorch.org/t/request-tutorial-for-deploying-on-cloud-based-virtual-machine/28/3
python3 -c "import torch; a = torch.randn(5, 5).cuda(); print(a)"

git clone https://github.com/pytorch/vision
cd vision
pip3 install -e .
cd ..

git clone https://github.com/pytorch/text
cd text
pip3 install -e .
cd ..

# Additional optional installs
sudo apt-get -y install python3-dev
# Spacy
pip3 install spacy
python3 -m spacy download en

# Install jupyter notebook
pip install jupyter
ipython kernel install --name "h_py3" --user
