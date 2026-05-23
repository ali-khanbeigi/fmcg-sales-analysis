SELECT
    sku,
    SUM(revenue) AS Total_Revenue,
    RANK() OVER (ORDER BY SUM(revenue) DESC) AS Revenue_Rank
FROM vw_sales_clean
GROUP BY sku;
