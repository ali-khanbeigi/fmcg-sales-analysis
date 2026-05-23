
DROP TABLE IF EXISTS fmcg_sales_dataset_new;
CREATE TABLE fmcg_sales_dataset_new (
    Invoice_ID NVARCHAR(50),
    [date] DATE,
    category NVARCHAR(100),
    sku NVARCHAR(50),
    region NVARCHAR(50),
    channel NVARCHAR(50),
    price DECIMAL(18,4),
    quantity INT,
    discount DECIMAL(10,4),
    revenue DECIMAL(18,4),
    Cost_Per_Unit DECIMAL(18,4),
    Profit DECIMAL(18,4),
    Customer_Type NVARCHAR(50),
    Payment_Method NVARCHAR(50),
    Promotion NVARCHAR(50),
    Month INT,
    Year INT,
    Gross_Sales DECIMAL(18,4),
    Discount_Value DECIMAL(18,4),
    Calculated_Net_Sales DECIMAL(18,4)
);


BULK INSERT fmcg_sales_dataset_new
FROM 'C:\Temp\fmcg.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
SELECT COUNT(*) FROM fmcg_sales_dataset_new;

SELECT TOP 10 * FROM fmcg_sales_dataset_new;

SELECT *
FROM fmcg_sales_dataset_new
WHERE Invoice_ID IS NULL;

SELECT TOP 10
    Gross_Sales,
    Discount_Value,
    Calculated_Net_Sales,
    Gross_Sales - Discount_Value AS Expected_Net
FROM fmcg_sales_dataset_new;

SELECT 
    COUNT(DISTINCT region) AS Regions,
    COUNT(DISTINCT category) AS Categories,
    COUNT(DISTINCT channel) AS Channels
FROM fmcg_sales_dataset_new;
