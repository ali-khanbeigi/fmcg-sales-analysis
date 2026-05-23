SELECT TOP 10 * FROM fmcg_sales_dataset_new;
SELECT * FROM fmcg_sales_dataset_new
WHERE Invoice_ID IS NULL;
SELECT TOP 10 
	Gross_Sales,
    Discount_Value,
    Calculated_Net_Sales,
    Gross_Sales - Discount_Value AS Expected_Net
FROM fmcg_sales_dataset_new

SELECT 
	COUNT(DISTINCT region) as Regions,
	COUNT(DISTINCT category) as Categories,
	COUNT(DISTINCT channel) as Channel
FROM fmcg_sales_dataset_new

