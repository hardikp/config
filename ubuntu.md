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

Other:
* Install shutter.
* Ubuntu installation black screen - https://askubuntu.com/questions/832163/black-screen-when-loading-ubuntu-live-usb and https://askubuntu.com/questions/162075/my-computer-boots-to-a-black-screen-what-options-do-i-have-to-fix-it
