DROP TABLE IF EXISTS artyomashigov_homework.gold_allviews;

CREATE TABLE artyomashigov_homework.gold_allviews
WITH (
    format = 'PARQUET',
    parquet_compression = 'SNAPPY',
    external_location = 's3://ceu-artyom-wikidata/datalake/gold_allviews/'
) AS
SELECT 
    article,
    SUM(views) AS total_top_view,
    MIN(rank) AS top_rank,
    COUNT(DISTINCT date) AS ranked_days
FROM 
    artyomashigov_homework.silver_views
GROUP BY 
    article
ORDER BY
    total_top_view DESC;
