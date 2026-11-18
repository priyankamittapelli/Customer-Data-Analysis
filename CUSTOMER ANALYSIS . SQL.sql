-- Q1
SELECT gender,
COUNT(*) as total_transactions
FROM customer
GROUP BY gender;


-- Q2
SELECT gender,
SUM(QUANTITY) AS total_transactions_sold
FROM customer
GROUP BY gender;

-- Q3
SELECT gender,
SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY gender;

-- Q4
SELECT category,
SUM(quantity) AS total_products_sold,
SUM(quantity * price) AS total_revenue
FROM customer
GROUP BY category
ORDER BY total_products_sold DESC;
