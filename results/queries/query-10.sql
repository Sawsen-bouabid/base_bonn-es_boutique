SELECT customers.first_name, customers.last_name,
 COUNT(orders.customer_id) AS nombre_commande
FROM customers


INNER JOIN orders on  orders.customer_id = customers.id 

GROUP BY  customers.first_name,customers.last_name

HAVING nombre_commande >=0