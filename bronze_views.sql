DROP TABLE IF EXISTS artyomashigov_homework.bronze_views;

CREATE EXTERNAL TABLE
artyomashigov_homework.bronze_views (
    article STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at TIMESTAMP) 
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://ceu-artyom-wikidata/datalake/bronze_views/';