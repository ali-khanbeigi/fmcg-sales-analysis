WITH Monthly_Sales AS (
    SELECT 
        Year,
        Month,
        SUM(revenue) AS Monthly_Revenue
    FROM vw_sales_clean
    GROUP BY Year, Month
)
SELECT 
    Year,
    Month,
    Monthly_Revenue,
    LAG(Monthly_Revenue) 
        OVER (ORDER BY Year, Month) AS Previous_Month
FROM Monthly_Sales;
