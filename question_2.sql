-- Which month in 2022 has had the highest revenue?

SELECT  SUM(sale_price) AS total_sales,
        LEFT(dates,4),
        month_name

FROM forquerying2

GROUP BY
    LEFT(dates,4), month_name

HAVING
    LEFT(dates,4) LIKE '2022'

ORDER BY
    SUM(sale_price) DESC

LIMIT
    1;