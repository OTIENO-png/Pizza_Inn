SELECT 
    od.order_id,
    pt.name AS pizza_name,
    pt.category,
    p.size,
    od.quantity,
    p.price,
    o.date,
    o.time,
    (od.quantity * p.price) AS total_price
FROM order_details od
INNER JOIN Pizza p ON od.pizza_id = p.pizza_id
INNER JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
INNER JOIN orders o ON od.order_id = o.order_id
WHERE price >10 AND price < 15
ORDER BY od.order_id DESC
LIMIT 20;
