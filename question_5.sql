-- Which product category generated the most profit for the "Wiltshire, UK" region in 2021?

SELECT  SUM(sale_price) - SUM(cost_price) AS total_profit,
        category,
        full_region,
        LEFT(dates,4) AS order_year

FROM forquerying2

GROUP BY
    full_region,
    category, 
    LEFT(dates,4)

HAVING
    full_region LIKE 'Wiltshire, UK' AND LEFT(dates,4) = '2021'

ORDER BY
    total_profit DESC

LIMIT
    1;