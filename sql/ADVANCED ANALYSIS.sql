SELECT TOP 10
    sku,
    SUM(revenue) AS Revenue
FROM vw_sales_clean
GROUP BY sku
ORDER BY Revenue DESC;

SELECT 
    Customer_Type,
    SUM(revenue) AS Revenue,
    SUM(Profit) AS Profit
FROM vw_sales_clean
GROUP BY Customer_Type;

SELECT 
    sku,
    SUM(quantity) AS Total_Sold
FROM vw_sales_clean
GROUP BY sku
ORDER BY Total_Sold DESC;

SELECT TOP 10
    sku,
    SUM(Profit) AS Total_Profit
FROM vw_sales_clean
GROUP BY sku
ORDER BY Total_Profit DESC;
