SELECT orders.number, 
 SUM(products.price * order_product.quantity) AS total_price,
 customers.first_name
FROM products
INNER JOIN order_product on products.id = order_product.product_id
INNER JOIN orders on orders.id = order_product.order_id
INNER JOIN customers on  customers.id =orders.customer_id

WHERE customers.first_name = 'Charlize' 
GROUP BY  orders.number