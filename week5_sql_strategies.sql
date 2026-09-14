-- WEEK 5: EVALUATION AND CRITIQUE OF SQL QUERY STRATEGIES

-- 1. SELECT * versus specific columns
SELECT * FROM Products;

SELECT product_id, product_name, category, price
FROM Products
WHERE stock > 0
ORDER BY price ASC
LIMIT 20;

-- 2. Filtering before aggregation
-- Less effective / logically incorrect approach
SELECT customer_id, COUNT(*) AS order_count
FROM Orders
GROUP BY customer_id
HAVING status = 'Completed';

-- Recommended
SELECT customer_id, COUNT(*) AS order_count
FROM Orders
WHERE status = 'Completed'
GROUP BY customer_id;

-- 3. Implicit versus explicit JOIN
SELECT c.customer_name, o.order_id
FROM Customers c, Orders o
WHERE c.customer_id = o.customer_id;

SELECT c.customer_name, o.order_id
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- 4. Date function versus date range
SELECT order_id, order_date
FROM Orders
WHERE YEAR(order_date) = 2026;

SELECT order_id, order_date
FROM Orders
WHERE order_date >= '2026-01-01'
AND order_date < '2027-01-01';

-- 5. Recommended multi-table revenue query
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity * p.price) AS revenue
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
JOIN Orders o ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC;

-- Validate alternatives with EXPLAIN / EXPLAIN ANALYZE.
