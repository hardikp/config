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
    sudo dpkg -i vscode.deb
    ```
* Python virtualenv:
    ```shell
    sudo apt install python3-pip
    pip3 install virtualenv
    export PATH=$PATH:$HOME/.local/bin
    virtualenv -p python3 ~/h
    source ~/h/bin/activate
    ```
* Other things to install:
    * Pytorch - https://pytorch.org/get-started/locally/
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
        hwinfo --gfxcard --short
        ```
    * List nvidia drivers:
        ```shell
        sudo ubuntu-drivers list
        ```
    * Install the latest one:
        ```shell
        sudo apt install nvidia-driver-515 nvidia-dkms-515
        ```
    * Restart the computer. Confirm the installation using:
        ```shell
        nvidia-smi
        ```
    * Optionally, configure the driver if needed:
        ```shell
        sudo nvidia-settings
        ```

* Nvidia driver + CUDA - https://gist.github.com/kmhofmann/cee7c0053da8cc09d62d74a6a4c1c5e4
* Download and install Canon mf642c printer drivers - https://www.usa.canon.com/internet/portal/us/home/support/details/printers/color-laser/canon-color-imageclass-mf642cdw

Other:
* Install shutter.
* Ubuntu installation black screen - https://askubuntu.com/questions/832163/black-screen-when-loading-ubuntu-live-usb and https://askubuntu.com/questions/162075/my-computer-boots-to-a-black-screen-what-options-do-i-have-to-fix-it
