Instructions are applicable for ubuntu 20.04.

* Install `git`, `vim`:
    ```shell
    sudo apt install git vim
    ```
* Get ssh keys from email. Update the permissions to remove group and other permissions:
    ```shell
    chmod go-rw .ssh/id_rsa*
    ```
* Clone git@github.com:hardikp/config.git and run `setupgit.sh`.
    ```shell
    git clone git@github.com:hardikp/config.git
    cd config
    bash setupgit.sh
    ```
* Download vscode and install it:
    ```shell
    sudo dpkg -i ~/Downloads/code_1.96.2-1734607745_amd64.deb
    ```
* Python virtualenv:
    ```shell
    sudo apt install python3-virtualenv
    sudo apt install python3-pip  # Not sure if this is needed anymore
    export PATH=$PATH:$HOME/.local/bin  # Not sure if this is needed at this point.
    virtualenv -p python3 ~/h
    source ~/h/bin/activate
    ```
* Python packages to install:
    ```shell
    pip3 install torch torchvision torchaudio
    pip3 install jupyterlab
    pip3 install tqdm
    ```
* Install NVIDIA driver:
    * Check if you have NVIDIA GPU using either of these 2 commands:
        ```shell
        sudo lshw -C display
        hwinfo --gfxcard --short  # Needs `sudo apt install hwinfo`.
        ```
    * List nvidia drivers:
        ```shell
        sudo ubuntu-drivers list
        ```
    * Install the latest one:
        ```shell
        sudo apt install nvidia-driver-550 nvidia-dkms-550
        ```
    * Restart the computer. Confirm the installation using:
        ```shell
        nvidia-smi
        ```
    * Optionally, configure the driver if needed:
        ```shell
        sudo nvidia-settings
        ```
* Tensorflow:
    * Install CUDA toolkit:
        ```shell
        sudo apt install nvidia-cuda-toolkit
        ```
    * Install cuDNN from https://developer.nvidia.com/cudnn
    * Install tensorflow:
        ```shell
        pip install tensorflow
        ```
* Other things to install:
    * Install python extension for vs code and set "black" as formatter (vs code will prompt you to install black if not found).
    * pdflatex:
        ```shell
        sudo apt install texlive-latex-base
        sudo apt install texlive-full
        ```
    * (Optional) npm:
        ```shell
        sudp apt install npm
        ```
