# Bash Examples

* find
    ```bash
    find . -name "*.txt" -exec rm {} \;

    # Remove files with modify time more than 2 days
    find . -mtime +2 -exec rm {} \;
    ```

* Add shadow to an image (For Mac, do `brew install imagemagick` first to install ImageMagick.)
    ```bash
    #!/bin/bash

    convert "$1" -trim \( +clone -background grey25 -shadow 80x40+5+30 \) +swap -background transparent -layers merge +repage "$1-shadow.png"
    ```