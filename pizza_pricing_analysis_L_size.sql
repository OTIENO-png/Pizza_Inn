SELECT *
FROM pizzas
WHERE size ="L"
ORDER BY price ASC
LIMIT 5;

SELECT pizza_type_id, size, MIN(price) AS cheapest_price
FROM pizzas
WHERE size = 'L'
GROUP BY pizza_type_id, size
ORDER BY cheapest_price ASC
LIMIT 5;
