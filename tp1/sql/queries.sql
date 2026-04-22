-- categories with 5 products or more
select c.name, count(p.id) as products_quantity
from products as p
join categories as c 
on p.category_id = c.id
group by c.name
having count(p.id) >= 5;

-- orders that exceeding $70000
SELECT o.id, SUM(od.purchase_price * od.quantity) AS total
FROM orders as o
JOIN orderdetail od ON od.order_id = o.id
GROUP BY o.id 
HAVING SUM(od.purchase_price * od.quantity) > 70000;

-- categories with an average price of $20000
SELECT c.name, ROUND(AVG(p.price), 2) AS average_price
from categories as c
JOIN products as p ON p.category_id = c.id
GROUP BY c.id, c.name
HAVING AVG(p.price) > 20000;

-- customers who bought in more than one category
SELECT c.name, c.lastname, COUNT(DISTINCT p.category_id) AS categorias_compradas
FROM clients AS c
JOIN orders AS o ON o.client_id = c.id
JOIN orderDetail AS od ON od.order_id = o.id
JOIN products AS p ON p.id = od.product_id
GROUP BY c.id, c.name, c.lastname
HAVING COUNT(DISTINCT p.category_id) > 1;

-- customers who have bought at least one time
SELECT name, email FROM clients
WHERE EXISTS(
	SELECT 1 FROM orders WHERE orders.client_id = clients.id
);

-- customers with their orders quantity
SELECT name, lastname,
(SELECT COUNT(*) FROM orders AS o WHERE o.client_id = c.id) AS total_orders
from clients AS c;

-- customers who bought a product in a specific category
SELECT name, lastname FROM clients AS c
WHERE EXISTS (
SELECT 1 FROM orders AS o
JOIN orderdetail AS od ON o.id = od.order_id
JOIN products AS p ON p.id = od.product_id
JOIN categories AS cat ON cat.id = p.category_id
WHERE o.client_id = c.id AND cat.name = 'Deportes'
);

-- the customer who spent more money
SELECT name, lastname FROM clients AS c
WHERE id = (
SELECT o.client_id FROM orders AS o
JOIN orderDetail od ON o.id = od.order_id
GROUP BY o.client_id 
ORDER BY SUM(od.purchase_price * od.quantity) DESC
LIMIT 1
);

-- customer who dont have orders
SELECT name, lastname FROM clients AS c
WHERE NOT EXISTS (
SELECT 1 FROM orders AS o
WHERE c.id = o.client_id
);

-- best selling product
SELECT p.name, SUM(od.quantity) AS total_selled FROM orders AS o
JOIN orderdetail AS od ON o.id = od.order_id
JOIN products AS p ON od.product_id = p.id
GROUP BY p.name
ORDER BY total_selled DESC
LIMIT 1;
