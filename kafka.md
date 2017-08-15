# Kafka commands

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
