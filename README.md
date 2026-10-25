# Adidas 2021 Sales Performance Analysis

### Excel | SQL | Tableau

## Project Overview
I analyzed 8,342 Adidas 2021 sales records to understand sales performance across regions, products, retailers, and months. I used Excel to organize and analyze the data, SQL to validate and compare financial results, and Tableau to build an interactive dashboard.

The goal was to look beyond total revenue and identify which areas of the business generated the strongest sales and gross profit margins.

## Interactive Tableau Dashboard
[View My Adidas Sales Dashboard](https://public.tableau.com/views/Adidas2021SalesPerformanceExcelSQLTableau/AdidasSalesDashboard)

The dashboard includes four visualizations covering regional sales, product sales, retailer sales, and monthly sales trends. Selecting a region filters the other charts.

## Tools and Skills
- **Microsoft Excel:** PivotTables, financial calculations, data analysis, and charts
- **SQL (SQLite):** SUM, GROUP BY, ORDER BY, CAST, REPLACE, and data validation
- **Tableau Public:** Interactive dashboards, visualizations, regional filtering, and KPI displays

## Key Performance Metrics
| Metric | Result |
|---|---|
| Sales Records | 8,342 |
| Total Revenue | $95.93M |
| Cost of Goods Sold | $57.72M |
| Gross Profit | $38.21M |
| Gross Profit Margin | 39.83% |

## Key Findings
- **Regional:** The West generated the highest revenue at $26.42M, while the South had the highest gross profit margin at 45.52%.
- **Product:** Men's Street Footwear led revenue at $22.69M, while Women's Apparel had the highest gross profit margin at 42.09%.
- **Retailer:** Foot Locker led revenue at $23.28M, while Sports Direct led gross profit at $9.84M and gross profit margin at 43.48%.
- **Monthly:** July had the highest sales at $10.37M, followed closely by December at $10.34M.

## My Process
1. Analyzed the dataset in Excel using PivotTables and financial calculations.
2. Exported the data to CSV and imported it into SQLite.
3. Wrote 12 SQL queries to validate totals and analyze business performance.
4. Imported the dataset into Tableau and built four sales visualizations.
5. Combined the charts into an interactive dashboard and developed business recommendations.

## Challenge I Solved
When I first calculated total revenue in SQL, the result was incorrect because sales amounts contained commas and were imported as text.

I corrected this by using:

```sql
CAST(REPLACE(sales, ',', '') AS REAL)
```

After the correction, my SQL revenue total matched the $95.93M calculated in Excel. This helped me understand why validating data types is important.

## Business Recommendations
1. Review opportunities to expand high-margin product categories such as Women's Apparel.
2. Examine Sports Direct's product mix and pricing to understand its strong profitability.
3. Evaluate inventory and marketing plans around the stronger sales months of July and December.
4. I would compare the South and West to see why the South has a better profit margin even though the West brings in more sales

## Project Files
- [Excel Analysis](Adidas_MIS_Portfolio_Project.xlsx)
- [Sales Dataset](Adidas_Sales_2021_SQL.csv)
- [SQL Queries](Adidas_Sales_Analysis.sql)
- [Business Insights and Recommendations](Adidas_Business_Insights.txt)

## What I Learned
One thing this project taught me was that having the highest sales doesn't always mean being the most profitable. I also got more comfortable using SQL to work with data and Tableau to turn my findings into charts that are easier to understand.

This project uses a sample Adidas sales dataset for educational purposes. The results do not represent Adidas' official financial performance.
