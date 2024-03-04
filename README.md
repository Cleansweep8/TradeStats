### Kafka Trade Data Processing Application

This application processes global commodity trade statistics using Apache Kafka, allowing users to aggregate data by country_or_area and commodity and report import/export totals.

### Requirements

- Gradle 6.9.4 or higher
- Java 11 or higher
- Docker

### Setup Instructions

1. Clone the repository:

   ```
   git clone https://github.com/Cleansweep8/TradeStats.git
   ```

2. Navigate to the project directory:

   ```
   cd Trade
   ```


3. Start Apache Kafka and Zookeeper using Docker Compose:

   ```
   docker compose up -d
   ```
   N.B. If re-running the application, ensure that any mounted volumes are deleted before running `docker compose up` again

### Usage

1. **Producer Application**:

    - Ensure you have the CSV file downloaded and stored in the `TradeStats/app/src/main/java/resources` directory.
    - While in the TradeStats directory, run the producer application to publish trade data to the Kafka topic:

      ```
      gradle run
      ```

2. **Consumer Application**:

    - While in the TradeStats directory, run the consumer application in a separate terminal to process trade data from the Kafka topic:

      ```
      gradle runConsumer
      ```

3. **Viewing Results**:

    - Monitor the console output of the consumer application.

### Notes

- Ensure Docker is running before starting Kafka and Zookeeper using Docker Compose.
- Modify environment variables, JAVA_HOME paths, or properties as needed to match your Java/Gradle setup.
- Gradle Wrapper is included in the project to simplify dependency management and build process.
