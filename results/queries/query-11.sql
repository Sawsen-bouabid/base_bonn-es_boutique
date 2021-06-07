


SELECT customers.first_name, customers.last_name,
SUM(products.price * order_product.quantity) as totalPrice
FROM customers
LEFT JOIN orders on customers.id = orders.customer_id
LEFT JOIN order_product on orders.id = order_product.order_id
LEFT JOIN products on order_product.product_id = products.id
GROUP BY customers.first_name, customers.last_name