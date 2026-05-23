SELECT 
	SUM(quantity) as Total_Unit_sold,
	SUM(revenue) as Total_Revenue,
	SUM(profit)as Total_Profit,
	ROUND(SUM(profit) * 100.0 / SUM(revenue), 2) as Profit_Margin_Percent

FROM vw_sales_clean;

SELECT 
    region,
    SUM(revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM vw_sales_clean
GROUP BY region
ORDER BY Total_Revenue DESC;

SELECT
	YEAR,
	MONTH,
	SUM(revenue) as monthly_trend
from vw_sales_clean
group by Year,Month
order by Year,Month

SELECT 
    channel,
    SUM(revenue) AS Revenue,
    SUM(Profit) AS Profit,
    ROUND(SUM(Profit) * 100.0 / SUM(revenue), 2) AS Profit_Margin
FROM vw_sales_clean
GROUP BY channel
ORDER BY Revenue DESC;

SELECT 
    Promotion,
    SUM(revenue) AS Revenue,
    SUM(Profit) AS Profit
FROM vw_sales_clean
GROUP BY Promotion;
