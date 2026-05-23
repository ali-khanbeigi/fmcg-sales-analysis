SELECT *
FROM fmcg_sales_dataset_new
WHERE price < 0
	OR quantity<0
	OR revenue<0;

SELECT TOP 20
	revenue,
	Cost_Per_Unit*quantity AS Total_cost,
	profit,
	revenue - (Cost_Per_Unit*quantity) AS Expected_profit

FROM fmcg_sales_dataset_new

CREATE VIEW vw_sales_clean AS
SELECT
    Invoice_ID,
    [date],
    category,
    sku,
    region,
    channel,
    price,
    quantity,
    revenue,
    Cost_Per_Unit,
    Profit,
    Customer_Type,
    Payment_Method,
    Promotion,
    Month,
    Year,
    Gross_Sales,
    Discount_Value,
    Calculated_Net_Sales
FROM fmcg_sales_dataset_new;

SELECT * FROM vw_sales_clean	
