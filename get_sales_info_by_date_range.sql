-- Q6: Get all sales information for a specific dealer for a specific date range

SELECT *
FROM sales_contracts
WHERE sales_date BETWEEN '2010-01-01' AND '2023-12-30'
ORDER BY sales_date DESC;
