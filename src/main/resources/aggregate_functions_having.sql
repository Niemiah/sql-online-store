SELECT u.user_id, COUNT(o.order_id) AS order_count
FROM Users u
JOIN Orders o ON u.user_id=o.user_id
GROUP BY u.user_id
HAVING order_count > 2;

SELECT p.product_id, AVG(r.rating) AS average_rating
FROM Products p
JOIN Reviews r ON p.product_id=r.product_id
GROUP BY p.product_id
HAVING average_rating >= 4.1;

SELECT c.category_id, SUM(p.product_price) AS total_product_price
FROM Categories c
JOIN Product_Categories pc ON c.category_id=pc.category_id
JOIN Products p ON pc.product_id=p.product_id
GROUP BY c.category_id
HAVING total_product_price > 800;

SELECT a.state, COUNT(u.user_id) AS user_count
FROM Addresses a
JOIN Users u ON a.user_id=u.user_id
GROUP BY a.state
HAVING user_count > 40;

SELECT o.order_id, SUM(p.product_price * od.quantity) AS order_total
FROM Orders o
JOIN Order_Details od ON o.order_id=od.order_id
JOIN Products p ON od.product_id=p.product_id
GROUP BY o.order_id
HAVING order_total > 250;

SELECT u.user_id, MIN(o.order_id) AS first_order_id
FROM Users u
JOIN Orders o ON u.user_id=o.user_id
GROUP BY u.user_id
HAVING first_order_id < 50;

SELECT p.product_id, MAX(od.quantity) AS max_quantity_ordered
FROM Products p
JOIN Order_Details od ON p.product_id=od.product_id
GROUP BY p.product_id
HAVING max_quantity_ordered > 5;