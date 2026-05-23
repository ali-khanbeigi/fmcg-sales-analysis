WITH Monthly_Sales AS (
    SELECT 
        Year,
        Month,
        SUM(revenue) AS Monthly_Revenue
    FROM vw_sales_clean
    GROUP BY Year, Month
)
SELECT *
FROM Monthly_Sales
ORDER BY Year, Month;
