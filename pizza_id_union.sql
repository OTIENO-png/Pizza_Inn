SELECT 'Total Pizza Types id' AS Description, count(pizza_id) AS Total_id FROM pizzas
UNION
SELECT  'Total Ordered Pizzas', count(pizza_id) FROM order_details;
