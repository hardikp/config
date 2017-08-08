# Bash Examples

* find
    ```bash
    find . -name "*.txt" -exec rm {} \;

    # Remove files with modify time more than 2 days
    find . -mtime +2 -exec rm {} \;
    ```
