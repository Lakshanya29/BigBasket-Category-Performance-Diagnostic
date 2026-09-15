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
## Prompt #2 — Pandas Cleaning and Analysis

### Role
Act as a Python/Pandas tutor helping me complete the independent analysis section of my BigBasket capstone.

### Context
I am working with `orders_raw.csv` and `products.csv`. I need to independently clean the raw order data, merge it with product information, and analyze delivered-order revenue by category and supplier.

### Task
Guide me through cleaning the data, handling missing values and outliers, parsing dates, merging orders with products, and calculating delivered revenue by category and supplier.

### Constraints
Use Python and Pandas. Preserve the original raw files. Use clear, beginner-friendly Pandas operations. For text cleaning, strip whitespace and standardize city/category casing. Use IQR-based outlier detection and capping for `amount_inr`. Merge orders with products using `product_id`.

### Format
Provide short Python code blocks with a brief explanation of what each step does.

### Verification
I ran the completed notebook in Google Colab and verified that the orders/products merge produced 500 rows and 19 columns. The delivered-order category revenue analysis identified Household Essentials as the top category at ₹20,985. I also verified the supplier revenue analysis completed successfully.
