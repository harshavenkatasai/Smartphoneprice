Create view gold.mobiles
As 
Select * from OPENROWSET
                (
    Bulk 'https://onedatalakeg2storage.blob.core.windows.net/silver-layer/Mobiles/',
    Format = 'PARQUET'
) as mobileone