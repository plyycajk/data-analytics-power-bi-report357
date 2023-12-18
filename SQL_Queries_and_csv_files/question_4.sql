--Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders

CREATE VIEW sales_by_store_type_summary AS
SELECT  store_type,
        SUM(sale_price) AS total_sales,
        SUM(sale_price) * 100.0 / SUM(SUM(sale_price)) OVER() AS percentage_of_total_sales,
        COUNT(order_date) AS number_of_orders

FROM forview

GROUP BY
        store_type;