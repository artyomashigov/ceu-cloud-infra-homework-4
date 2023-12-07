DROP TABLE IF EXISTS artyomashigov_homework.silver_views;

CREATE TABLE artyomashigov_homework.silver_views
WITH (
      format = 'PARQUET',
      parquet_compression = 'SNAPPY',
      external_location = 's3://ceu-artyom-wikidata/datalake/views_silver/'
) AS 
SELECT article, views, rank, date 
FROM artyomashigov_homework.bronze_views;