USE coffee;

SELECT COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(AVG(Exited)*100,2) AS Churn_Percentage,
       ROUND(AVG(Balance),2) AS Average_Balance,
       ROUND(AVG(CreditScore),2) AS Average_CreditScore
FROM bank_data;

SELECT Geography, COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(AVG(Exited)*100,2) AS Churn_Percentage
FROM bank_data
GROUP BY Geography;

SELECT Age, COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(AVG(Exited)*100,2) AS Churn_Percentage
FROM bank_data
GROUP BY Age ORDER BY Age;

SELECT NumOfProducts, COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(AVG(Exited)*100,2) AS Churn_Percentage
FROM bank_data
GROUP BY NumOfProducts ORDER BY NumOfProducts;

SELECT CustomerId, Geography, Age, CreditScore, Balance, NumOfProducts
FROM bank_data
WHERE Exited=1
ORDER BY Balance DESC;

SELECT IsActiveMember, COUNT(*) AS Total_Customers,
       SUM(Exited) AS Churned_Customers,
       ROUND(AVG(Exited)*100,2) AS Churn_Percentage
FROM bank_data
GROUP BY IsActiveMember;
