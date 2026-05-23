SELECT 
    region,
    SUM(revenue) AS Revenue,
    SUM(revenue) * 100.0 
        / SUM(SUM(revenue)) OVER() AS Market_Share
FROM vw_sales_clean
GROUP BY region;
