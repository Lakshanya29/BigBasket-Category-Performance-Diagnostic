# BigBasket Category Performance Diagnostic

## Overview

This capstone project analyzes BigBasket category performance using SQL,
Google Sheets/Excel, Tableau, and Python/Pandas.

The project covers: - SQL-based data diagnostics and category-level
analysis - Google Sheets/Excel category target analysis - An interactive
Tableau Public dashboard - Independent Python/Pandas cleaning, analysis,
cross-validation, and visualization

## Project Structure

``` text
BigBasket_capstone/
├── 01_foundations.sql
├── 02_aggregation_joins.sql
├── 03_reporting.sql
├── verify.sql
├── ai_log.md
├── analysis.ipynb
├── generate_data.py
├── bigbasket_capstone
├── BigBasket_Category_Performance.xlsx
├── monthly_category_revenue.csv
├── orders_raw.csv
└── products.csv
```

## Part 1 --- SQL

The SQL work is organized into: - `01_foundations.sql` --- foundational
queries and diagnostics - `02_aggregation_joins.sql` --- aggregation and
join analysis - `03_reporting.sql` --- reporting and category-level
outputs - `verify.sql` --- verification queries

The SQL analysis establishes the project baseline for category revenue,
target comparison, and supplier/category findings.

## Part 2 --- Google Sheets / Excel

`BigBasket_Category_Performance.xlsx` contains the completed category
performance analysis.

The Category Summary includes: - Total Revenue - Target Revenue -
Variance - % Variance - Target Status - Part 1 SQL cross-check

Target tiers: - **Above Target:** Household Essentials, Personal Care,
Bakery - **Below Target - Watch:** Dairy & Eggs - **Below Target -
Critical:** Snacks & Beverages, Fruits & Vegetables

## Part 3 --- Tableau

The Tableau Public dashboard contains: - Total Revenue KPI - Total
Delivered Orders KPI - Average Order Value KPI - Categories Meeting
Target KPI - Monthly Revenue Trend - Category Revenue by target tier -
Interactive Category filter

### Live Tableau Dashboard

[Open the BigBasket Category Performance
Dashboard](https://public.tableau.com/views/BigBasketDashboard_17894497685380/Dashboard1)

## Part 4 --- Python / Pandas

`analysis.ipynb` is the Jupyter/Google Colab notebook for the
independent cleaning and analysis of the raw data.

The notebook includes: - Loading and inspection of `orders_raw.csv` and
`products.csv` - Duplicate removal - City and category casing/whitespace
cleaning - Missing `amount_inr` handling - IQR-based outlier detection
and capping - Date parsing and derived columns - Merge with
product/supplier data - Category and supplier revenue analysis -
Cross-validation against Part 1 - Three Matplotlib visualizations -
Exactly three What / Why / Next-step observations

### Key Python finding

After cleaning, **Household Essentials** is the top category by
delivered revenue at **₹20,985**, matching the top-category finding from
Part 1.

## Data Story

### Category performance

-   **Household Essentials --- Above Target:** ₹21,715 revenue vs
    ₹17,000 target, **₹4,715 above target (27.74%)**.
-   **Personal Care --- Above Target:** ₹16,382 vs ₹15,500, **₹882 above
    target (5.69%)**.
-   **Bakery --- Above Target:** ₹15,410 vs ₹12,000, **₹3,410 above
    target (28.42%)**.
-   **Dairy & Eggs --- Below Target - Watch:** ₹14,090 vs ₹16,500,
    **₹2,410 below target (14.61%)**.
-   **Snacks & Beverages --- Below Target - Critical:** ₹10,895 vs
    ₹13,000, **₹2,105 below target (16.19%)**.
-   **Fruits & Vegetables --- Below Target - Critical:** ₹9,790 vs
    ₹12,000, **₹2,210 below target (18.42%)**.

### Exactly two recommendations

1.  **Prioritize Snacks & Beverages and Fruits & Vegetables for
    recovery**, because they are both Critical and have a combined
    target shortfall of **₹4,315**.
2.  **Focus improvement efforts on Dairy & Eggs to close its ₹2,410
    gap**, while continuing to monitor the three Above Target categories
    to protect their performance.

## Regeneration / Reproduction

1.  Use the project raw data files:
    -   `orders_raw.csv`
    -   `products.csv`
2.  Run the SQL scripts in order for the SQL diagnostics and reporting.
3.  Use the resulting category-level data for the Sheets/Excel analysis.
4.  Connect `monthly_category_revenue.csv` to Tableau and reproduce the
    dashboard worksheets/KPIs.
5.  Open `analysis.ipynb` in Google Colab or Jupyter Notebook and run
    the Python analysis cells in order.
6.  The notebook independently cleans the raw data and cross-validates
    the key category/supplier findings.

## AI Usage

AI assistance used during the project is documented in `ai_log.md`.

The log records the prompts, accepted/modified suggestions, and
verification steps used for the project.

## Main Artifacts

-   SQL: `01_foundations.sql`, `02_aggregation_joins.sql`,
    `03_reporting.sql`, `verify.sql`
-   Spreadsheet output: `BigBasket_Category_Performance.xlsx`
-   Tableau: [Live
    Dashboard](https://public.tableau.com/app/profile/lakshanya.n/viz/BigBasketDashboard_1789449765380/Dashboard1)
-   Python notebook: `analysis.ipynb`
-   AI log: `ai_log.md`
