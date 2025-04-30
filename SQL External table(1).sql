--- creadinatil creation

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Harsha@one';


CREATE DATABASE SCOPED CREDENTIAL cred_harsha
with 
    IDENTITY = 'Managed Identity'

--- externala data source    

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://onedatalakeg2storage.blob.core.windows.net/silver-layer/Mobiles/',
    CREDENTIAL = cred_harsha
);

-- gold
CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://onedatalakeg2storage.blob.core.windows.net/gold-layer/',
    CREDENTIAL = cred_harsha
);

--- External file format

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);

--- External tables

CREATE EXTERNAL TABLE gold.mobileonedata
WITH
(
    LOCATION = 'source_gold',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS Select * from gold.mobiles;

Select * from gold.mobileonedata;