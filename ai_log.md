# AI-Assisted Prompting Log

## Prompt #1 — SQL Monthly Category Report

### Role
Act as a SQL tutor helping me complete a SQLite business analytics capstone.

### Context
I am working with the BigBasket capstone database `bigbasket_capstone.db`, which contains orders, products, customers, and category targets. I need a monthly category revenue report using Delivered orders only.

### Task
Write a SQLite query that joins `orders` with `products` and returns category, month, order_count, total_revenue, and avg_revenue.

### Constraints
Use only Delivered orders. Create the month using `strftime('%Y-%m', order_date)`. Group by category and month and order by category and month. The query must work in SQLite.

### Format
Return only the SQL query in a code block.

### Verification
I ran the suggested query against `bigbasket_capstone.db` in DB Browser for SQLite and verified that it returned exactly 36 rows with the five required columns.