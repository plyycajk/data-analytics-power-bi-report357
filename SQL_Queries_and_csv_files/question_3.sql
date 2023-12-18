-- Which German store type had the highest revenue for 2022?

SELECT  SUM(prod.sale_price) AS total_sales,
        store.store_type,
        store.country,
        LEFT(orders.order_date,4) AS order_year

FROM dim_product AS prod
    LEFT OUTER JOIN orders
    ON orders.product_code = prod.product_code
    LEFT OUTER JOIN dim_store AS store
    ON orders.store_code = store.store_code


GROUP BY
    store.country,
    store.store_type, 
    LEFT(orders.order_date,4)

HAVING
    store.country LIKE 'Germany' AND LEFT(orders.order_date,4) = '2022'

ORDER BY
    SUM(prod.sale_price) DESC

LIMIT
    1;
