WITH order_summary AS (
    SELECT
        od.order_id,
        pt.name AS Pizza_name,
        pt.category,
        p.size,
        od.quantity,
        p.price,
        o.date,
        o.time,
        (od.quantity * p.price) AS total_price,
        -- Total pizzas sold across all orders (using SUM)
        SUM(od.quantity) OVER() AS Total_Quantity_Sold
    FROM order_details od
    LEFT JOIN Pizza p ON od.pizza_id = p.pizza_id
    LEFT JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
    LEFT JOIN orders o ON od.order_id = o.order_id
    WHERE o.date = '2015-01-16' 
      AND o.time BETWEEN '12:12:38' AND '13:00:00'
)
SELECT * 
FROM order_summary;
