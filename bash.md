# Bash Examples

* find
    ```bash
    find . -name "*.txt" -exec rm {} \;

    # Remove files with modify time more than 2 days
    find . -mtime +2 -type f -exec rm {} \;

    # Remove empty directories
    find . -type d -empty -exec rmdir {} \;
    find . -type d -empty -delete
    ```

* Add shadow to an image (For Mac, do `brew install imagemagick` first to install ImageMagick.)
    ```bash
    convert "$1" -trim \( +clone -background grey25 -shadow 80x40+5+30 \) +swap -background transparent -layers merge +repage "$1-shadow.png"
    ```

* Compress the image by converting it to jpeg and reducing size:
    ```bash
    convert ~/Downloads/IMG_2441.jpg -resize 1200 -quality 85 output.jpg
    ```

* `tr`
    ```bash
    cat fix_messages.txt | tr '\001' '|'
    ```

* `git grep` replace
    ```bash
    # Linux
    git grep -l 'original_text' | xargs sed -i 's/original_text/new_text/g'

    # Mac
    git grep -l 'original_text' | xargs sed -i '' -e 's/original_text/new_text/g'
    ```

* Look up public IP
    ```bash
    curl ipinfo.io/ip
    ```

* clang-format all files
    ```bash
    clang-format -i *.cpp
    ```

* valgrind memcheck tool
    ```bash
    valgrind --track-origins=yes --leak-check=full --show-leak-kinds=all --tool=memcheck --read-var-info=yes --log-file=error.txt cmd args
    ```

* valgrind [SGCheck tool](http://valgrind.org/docs/manual/sg-manual.html) for Stack and Global Array overrun detection
    ```bash
    valgrind --tool=exp-sgcheck --log-file=error.txt cmd args
    ```

* gdb
    ```bash
    gdb --args cmd args
    ```

    Useful commands:
    * `thread apply all bt` - print backtrace for all threads.
    * `f 6` - jump to frame 6 in the callstack.
    * `thread 3` - jump to thread 3.

* gpg - [move keys to another computer](https://www.phildev.net/pgp/gpg_moving_keys.html)

* docker - https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
    ```bash
    # Remove dangling images/containers/volumes/networks
    docker system prune
    docker system prune -a
    ```
