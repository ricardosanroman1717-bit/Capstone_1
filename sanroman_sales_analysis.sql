-- Capstone 1: EmporiUm Sales Analysis
-- Sales Territory: Florida
-- Region: South

USE sample_sales;

-- Question 1: Total Revenue and Date Range
SELECT
    SUM(s.Sale_Amount) AS Total_Revenue,
    MIN(s.Transaction_Date) AS Start_Date,
    MAX(s.Transaction_Date) AS End_Date
FROM Store_Sales AS s
INNER JOIN Store_Locations AS l
    ON s.Store_ID = l.StoreId
WHERE l.State = 'Florida';

-- Question 2: Revenue Breakdown by Year and Month

SELECT YEAR(s.Transaction_Date) AS Sales_Year,
MONTH(s.Transaction_Date) AS Sales_Month,
SUM(s.Sale_Amount) AS Monthly_Revenue
FROM Store_Sales AS s
INNER JOIN Store_Locations AS l
    ON s.Store_ID = l.StoreId
WHERE l.State = 'Florida'
GROUP BY YEAR(s.Transaction_Date), MONTH(s.Transaction_Date)
ORDER BY Sales_Year, Sales_Month;

-- Question 3: Florida vs. South Region Revenue
SELECT State, Region
FROM Management
WHERE Region = 'South';