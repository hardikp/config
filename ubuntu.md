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
* Nvidia driver + CUDA:
    ```shell
    ```
* Download and install Canon mf642c drivers - https://www.usa.canon.com/internet/portal/us/home/support/details/printers/color-laser/canon-color-imageclass-mf642cdw
* Install gscan2pdf:
    ```shell
    sudo apt install gscan2pdf
    ```

Other:
* Install shutter.
* Ubuntu installation black screen - https://askubuntu.com/questions/832163/black-screen-when-loading-ubuntu-live-usb and https://askubuntu.com/questions/162075/my-computer-boots-to-a-black-screen-what-options-do-i-have-to-fix-it
