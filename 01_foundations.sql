-- BigBasket Capstone - Foundation Queries


-- 1. SELECT / WHERE
-- Orders placed by customers in Chennai
SELECT *
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE city = 'Chennai'
);


-- 2. DISTINCT
-- List every distinct product category
SELECT DISTINCT category
FROM products;


-- 3. ORDER BY + LIMIT
-- Five highest-value orders
SELECT order_id, customer_id, amount_inr
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;


-- 4. Alias (AS)
-- Count the total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;


-- 5. IN
-- Orders paid using UPI or Credit Card
SELECT *
FROM orders
WHERE payment_mode IN ('UPI', 'Credit Card');


-- 6. BETWEEN
-- Orders with amount between 500 and 1000
SELECT *
FROM orders
WHERE amount_inr BETWEEN 500 AND 1000;


-- 7. NOT BETWEEN
-- Orders with amount outside the range 500 to 1000
SELECT *
FROM orders
WHERE amount_inr NOT BETWEEN 500 AND 1000;


-- 8. IS NULL
-- Orders with no rating recorded
SELECT *
FROM orders
WHERE rating IS NULL;