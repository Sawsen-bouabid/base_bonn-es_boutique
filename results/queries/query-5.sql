

SELECT products.name, order_product.quantity, products.price 
FROM products
INNER JOIN order_product on products.id = order_product.product_id
WHERE order_product.order_id = 1

/*SELECT *
FROM table1
INNER JOIN table2 ON table1.id = table2.fk_id


La syntaxe ci-dessus stipule qu’il faut sélectionner les enregistrements 
des tables table1 et table2 lorsque les données de la colonne “id” de table1 est égal aux données de la colonne fk_id de table2.*/