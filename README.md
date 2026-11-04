# Capstone 1: EmporiUm Florida Sales Analysis

## Project Overview

This project analyzes sales data for EmporiUm, a fictional retail company that sells books, technology, art supplies, and other products.

My assigned sales territory is **Florida**, part of the **South region**. I used SQL to analyze **in-store sales** from January 1, 2022, through December 31, 2025, and Excel to visualize monthly revenue trends. The goal was to turn sales data into insights and a practical business recommendation.

## Tools Used

- **MySQL Workbench:** Writing and running SQL queries
- **Microsoft Excel:** Building a PivotTable and PivotChart
- **GitHub:** Organizing and submitting project files
- **Git Bash:** Tracking and pushing project changes
- **PowerPoint:** Presenting the analysis and recommendation

## Sales Analysis Findings

### 1. Total Florida Revenue

Florida's 11 physical stores generated **$3,930,187.55** in revenue between **January 1, 2022, and December 31, 2025**.

### 2. Monthly and Yearly Revenue

| Year | Florida Revenue |
| --- | ---: |
| 2022 | $598,413.39 |
| 2023 | $917,174.67 |
| 2024 | $919,533.85 |
| 2025 | $1,495,065.64 |

**2025 was the strongest sales year**, with approximately 62.6% more revenue than 2024. The SQL monthly breakdown was exported to Excel for visualization.

### 3. Florida Compared With the South Region

The South region (Florida, South Carolina, and Texas) generated **$7,996,850.12** in total in-store revenue. Florida contributed approximately **49.15%** of that amount.

### 4. Product Category Analysis

I analyzed monthly sales-record counts and average sale amounts across **six product categories** using SQL `INNER JOIN`, `COUNT()`, `AVG()`, and `GROUP BY`. The query produced 288 category-month results covering four years.

### 5. Florida Store Rankings

I ranked all **11 Florida stores** by their total sales revenue. **Miami** generated the highest revenue at **$618,846.25**, while **Naples** generated the lowest at **$259,602.83**.

## Business Recommendation

I recommend **investigating opportunities to improve sales at the Naples store**. Management could review customer demand, product selection, and promotions, and compare relevant practices with Miami.

Revenue alone does not establish why Naples sold less or whether it was less profitable. Additional information about store size, expenses, and customer traffic should guide any major decisions.

## Excel Visualization

I exported Florida's monthly revenue results from MySQL to CSV, then created an **Excel PivotTable and PivotChart** comparing monthly revenue from **2022 through 2025**.

## Project Files

- [`sanroman_sales_analysis.sql`](sanroman_sales_analysis.sql) — SQL queries and next-quarter business recommendation
- [`florida_monthly_revenue.csv`](florida_monthly_revenue.csv) — Monthly Florida revenue exported from MySQL
- [`sanroman_territory_chart.xlsx`](sanroman_territory_chart.xlsx) — Excel PivotTable and PivotChart
- [`sanroman_capstone_presentation.pptx`](sanroman_capstone_presentation.pptx) — Eight-slide capstone presentation
- `README.md` — Project overview, findings, recommendation, and presentation link

## Recorded Video Presentation

**[Watch my recorded capstone presentation on Google Drive](https://drive.google.com/file/d/1wuv_3uOd2NCDvd1-Yq8qSTq9DPaAsi48/view?usp=sharing)**

The recorded presentation explains the SQL queries, the Excel PivotChart, the main findings, and my recommendation for Florida's next quarter.

