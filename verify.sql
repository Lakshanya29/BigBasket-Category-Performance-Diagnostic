-- BigBasket Capstone - Data Verification
--
-- Expected results:
-- products: 31
-- customers: 50
-- orders: 500
-- category_targets: 6
--
-- orders.status:
-- Cancelled: 42
-- Delivered: 434
-- Pending: 24


-- Table row counts
SELECT 'products' AS table_name, COUNT(*) AS row_count
FROM products
UNION ALL
SELECT 'customers', COUNT(*)
FROM customers
UNION ALL
SELECT 'orders', COUNT(*)
FROM orders
UNION ALL
SELECT 'category_targets', COUNT(*)
FROM category_targets;


-- Orders by status
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY status;