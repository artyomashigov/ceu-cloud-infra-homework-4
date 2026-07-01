# ceu-cloud-infra-homework-4

Cloud infrastructure homework using AWS S3 and SQL views to organize a small data lake workflow.

## Project Goal

The assignment builds a simple cloud data pipeline structure with raw extraction logic and layered SQL views. The repository documents the code used to move from extracted data toward bronze, silver, and gold analytical views.

## Files

- `extract_views.py` - Python extraction script.
- `bronze_views.sql` - bronze-layer SQL views.
- `silver_views.sql` - silver-layer SQL views.
- `gold_views.sql` - gold-layer SQL views.

## Data Lake

- S3 bucket: `ceu-artyom-wikidata`
- Data lake path: `s3://ceu-artyom-wikidata/datalake/`

## Workflow

1. Extract source data with Python.
2. Store data in the S3-backed data lake.
3. Define bronze views for raw or lightly processed data.
4. Define silver views for cleaned/intermediate data.
5. Define gold views for analysis-ready outputs.

## Tools

Python, SQL, AWS S3, and cloud data-lake concepts.
