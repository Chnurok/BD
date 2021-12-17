CREATE TABLE IF NOT EXISTS kafka_table
(
  id             UInt64,
  Day          Int64,
  TickTime      Double,
  Speed          Double
)
ENGINE=Kafka('localhost:9092', 'v12', 'kafka_group1', 'JSONEachRow');



CREATE TABLE db.table_kafka
(
  id             UInt64,
  Day          Int64,
  TickTime      Double,
  Speed          Double
)
Engine=Memory

CREATE MATERIALIZED VIEW db.table_kafka_consumer
TO db.table_kafka
AS SELECT *
FROM kafka_table;


SELECT * from db.table_kafka
