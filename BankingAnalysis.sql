select * from bankingDB

--Question 1: What is the total volume and value of transactions?
SELECT 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB;

--Question 2: How does the number and value of transactions differ between deposits and withdrawals?
SELECT 
    Transaction_Type, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    Transaction_Type;

--Question 3: Which branches handle the highest volume and value of transactions?
SELECT 
    Branch, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    Branch
ORDER BY 
    Total_Transaction_Value DESC;


--Question 4: Which account type (Savings, Checking, Business) is most 
--active in terms of transaction volume and value?
SELECT 
    Account_Type, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    Account_Type
ORDER BY 
    Total_Transaction_Value DESC;


--	Question 5: What is the average transaction size for each account type?
SELECT 
    Account_Type, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value, 
    AVG(Amount) AS Average_Transaction_Size
FROM 
    bankingDB
GROUP BY 
    Account_Type
ORDER BY 
    Average_Transaction_Size DESC;

--Question 6: Who are the top 5 customers in terms of total transaction amounts?
SELECT top 5
    Customer_ID, 
    CustomerName, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    Customer_ID, CustomerName
ORDER BY 
    Total_Transaction_Value DESC


--Question 7: What is the distribution of transactions across different months?
SELECT 
    YEAR(Date) AS Year,
    MONTH(Date) AS Month, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    YEAR(Date), MONTH(Date)
ORDER BY 
    Year, Month;

-- Question 8: What is the total value of transactions by branch and account type?
SELECT 
    Branch, 
    Account_Type, 
    COUNT(*) AS Total_Transactions, 
    SUM(Amount) AS Total_Transaction_Value
FROM 
    bankingDB
GROUP BY 
    Branch, Account_Type
ORDER BY 
    Total_Transaction_Value DESC;



