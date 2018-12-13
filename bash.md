# Commands I look up on the internet frequently

## Bash

* find
    ```bash
    find . -name "*.txt" -exec rm {} \;

    # Remove files with modify time more than 2 days
    find . -mtime +2 -type f -exec rm {} \;

    # Remove empty directories
    find . -type d -empty -exec rmdir {} \;
    find . -type d -empty -delete

    # Find files more than 100MB in size
    find -type f -size +100M
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

* gpg:
    * [move keys to another computer](https://www.phildev.net/pgp/gpg_moving_keys.html)
    * http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/

## Debugging

* gdb
    ```bash
    gdb --args cmd args
    ```

    Useful commands:
    * `thread apply all bt` - print backtrace for all threads.
    * `f 6` - jump to frame 6 in the callstack.
    * `thread 3` - jump to thread 3.

* valgrind memcheck tool
    ```bash
    valgrind --track-origins=yes --leak-check=full --show-leak-kinds=all --tool=memcheck --read-var-info=yes --log-file=error.txt cmd args
    ```

* valgrind [SGCheck tool](http://valgrind.org/docs/manual/sg-manual.html) for Stack and Global Array overrun detection
    ```bash
    valgrind --tool=exp-sgcheck --log-file=error.txt cmd args
    ```

## Docker

* docker - https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
    ```bash
    # Remove dangling images/containers/volumes/networks
    docker system prune
    docker system prune -a
    ```

## Kafka

http://kafka.apache.org/082/documentation.html#quickstart

* Start zookeeper and kafka
    ```bash
    # Start zookeeper first
    bin/zookeeper-server-start.sh config/zookeeper.properties

    bin/kafka-server-start.sh config/server.properties
    ```

* List of topics
    ```bash
    bin/kafka-topics.sh --list --zookeeper localhost:2181
    ```

* Consume messages from the beginning
    ```bash
    bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic nasdaq --from-beginning
    ```

## MySQL

* List of tables by size in one database:

    ```
    SELECT
        table_name AS `Table`,
        round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB`
    FROM information_schema.TABLES
    WHERE table_schema = "$DB_NAME"
        AND table_name = "$TABLE_NAME";
    ```

* List of tables by size in all databases:

    ```
    SELECT
        table_schema as `Database`,
        table_name AS `Table`,
        round(((data_length + index_length) / 1024 / 1024), 2) `Size in MB`
    FROM information_schema.TABLES
    ORDER BY (data_length + index_length) DESC;
    ```
