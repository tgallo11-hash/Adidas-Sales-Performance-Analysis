
-- Adidas 2021 Sales Performance Analysis
-- Data validation queries

-- Query 1: Count total sales records
SELECT COUNT(*) AS total_records
FROM Adidas_Sales_2021_SQL;

-- Query 2: Calculate total sales revenue
SELECT ROUND(
    SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2
) AS total_revenue
FROM Adidas_Sales_2021_SQL;

-- Query 3: Calculate total cost of goods sold
SELECT ROUND(
    SUM(CAST(REPLACE(cogs, ',', '') AS REAL)), 2
) AS total_cogs
FROM Adidas_Sales_2021_SQL;


-- REGIONAL SALES AND PROFITABILITY ANALYSIS

-- Query 4: Sales revenue by region
SELECT
    region,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales
FROM Adidas_Sales_2021_SQL
GROUP BY region
ORDER BY total_sales DESC;

-- Query 5: Sales, COGS, and gross profit by region
SELECT
    region,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales,
    ROUND(SUM(CAST(REPLACE(cogs, ',', '') AS REAL)), 2) AS total_cogs,
    ROUND(SUM(
        CAST(REPLACE(sales, ',', '') AS REAL) -
        CAST(REPLACE(cogs, ',', '') AS REAL)
    ), 2) AS gross_profit
FROM Adidas_Sales_2021_SQL
GROUP BY region
ORDER BY gross_profit DESC;

-- Query 6: Gross profit margin by region
SELECT
    region,
    ROUND(
        100.0 * SUM(
            CAST(REPLACE(sales, ',', '') AS REAL) -
            CAST(REPLACE(cogs, ',', '') AS REAL)
        ) /
        NULLIF(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 0),
        2
    ) AS gross_profit_margin_pct
FROM Adidas_Sales_2021_SQL
GROUP BY region
ORDER BY gross_profit_margin_pct DESC;


-- PRODUCT SALES AND PROFITABILITY ANALYSIS

-- Query 7: Sales revenue by product
SELECT
    product,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales
FROM Adidas_Sales_2021_SQL
GROUP BY product
ORDER BY total_sales DESC;

-- Query 8: Gross profit by product
SELECT
    product,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales,
    ROUND(SUM(CAST(REPLACE(cogs, ',', '') AS REAL)), 2) AS total_cogs,
    ROUND(SUM(
        CAST(REPLACE(sales, ',', '') AS REAL) -
        CAST(REPLACE(cogs, ',', '') AS REAL)
    ), 2) AS gross_profit
FROM Adidas_Sales_2021_SQL
GROUP BY product
ORDER BY gross_profit DESC;

-- Query 9: Gross profit margin by product
SELECT
    product,
    ROUND(
        100.0 * SUM(
            CAST(REPLACE(sales, ',', '') AS REAL) -
            CAST(REPLACE(cogs, ',', '') AS REAL)
        ) /
        NULLIF(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 0),
        2
    ) AS gross_profit_margin_pct
FROM Adidas_Sales_2021_SQL
GROUP BY product
ORDER BY gross_profit_margin_pct DESC;

-- RETAILER SALES AND PROFITABILITY ANALYSIS

-- Query 10: Sales revenue by retailer
SELECT
    retailer,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales
FROM Adidas_Sales_2021_SQL
GROUP BY retailer
ORDER BY total_sales DESC;

-- Query 11: Gross profit by retailer
SELECT
    retailer,
    ROUND(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 2) AS total_sales,
    ROUND(SUM(CAST(REPLACE(cogs, ',', '') AS REAL)), 2) AS total_cogs,
    ROUND(SUM(
        CAST(REPLACE(sales, ',', '') AS REAL) -
        CAST(REPLACE(cogs, ',', '') AS REAL)
    ), 2) AS gross_profit
FROM Adidas_Sales_2021_SQL
GROUP BY retailer
ORDER BY gross_profit DESC;

-- Query 12: Gross profit margin by retailer
SELECT
    retailer,
    ROUND(
        100.0 * SUM(
            CAST(REPLACE(sales, ',', '') AS REAL) -
            CAST(REPLACE(cogs, ',', '') AS REAL)
        ) /
        NULLIF(SUM(CAST(REPLACE(sales, ',', '') AS REAL)), 0),
        2
    ) AS gross_profit_margin_pct
FROM Adidas_Sales_2021_SQL
GROUP BY retailer
ORDER BY gross_profit_margin_pct DESC;