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

SELECT SUM(s.Sale_Amount) AS South_Revenue
FROM Store_Sales AS s
INNER JOIN Store_Locations AS l
    ON s.Store_ID = l.StoreId
    INNER JOIN Management AS m
    ON l.State = m.State
WHERE m.Region = 'South';

-- Florida generated $3,930,187.55 out of the South region's
-- $7,996,850.12 total revenue, contributing approximately 49.15%.

-- Question 4: Monthly Transactions and Average Sales by Product Category

SELECT
    YEAR(s.Transaction_Date) AS Sales_Year,
    MONTH(s.Transaction_Date) AS Sales_Month,
    c.Category AS Product_Category,
    COUNT(*) AS Transaction_Count,
    ROUND(AVG(s.Sale_Amount), 2) AS Average_Sale
    FROM Store_Sales AS s
INNER JOIN Store_Locations AS l
    ON s.Store_ID = l.StoreId
INNER JOIN Products AS p
    ON s.Prod_Num = p.ProdNum
INNER JOIN Inventory_Categories AS c
    ON p.Categoryid = c.Categoryid
    WHERE l.State = 'Florida'
GROUP BY YEAR(s.Transaction_Date),
         MONTH(s.Transaction_Date),
         c.Category
ORDER BY Sales_Year, Sales_Month, Product_Category;

-- Question 5: Florida Store Revenue Rankings

SELECT
    l.StoreId,
    l.StoreLocation,
    SUM(s.Sale_Amount) AS Total_Revenue
FROM Store_Sales AS s
INNER JOIN Store_Locations AS l
    ON s.Store_ID = l.StoreId
WHERE l.State = 'Florida'
GROUP BY l.StoreId, l.StoreLocation
ORDER BY Total_Revenue DESC;

-- Question 6: Recommendation for Next Quarter
-- I recommend focusing on improving sales at the Naples store.
-- Naples generated the lowest revenue in Florida at $259,602.83,
-- while Miami generated the highest at $618,846.25.
-- The sales team should investigate customer demand and product
-- selection in Naples and compare its strategies with Miami.
-- Since revenue alone does not explain store performance,
-- further research should be done before making major changes.
