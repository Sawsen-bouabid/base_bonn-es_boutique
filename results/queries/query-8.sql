
SELECT orders.number,
 SUM(products.price * order_product.quantity) AS total_price
FROM products
INNER JOIN order_product on products.id = order_product.product_id
INNER JOIN orders on  orders.id =order_product.order_id
GROUP BY  orders.number
HAVING total_price BETWEEN 100 and 550 



