SELECT name, income
FROM customers
ORDER BY income DESC;

SELECT type, amount
FROM transactions
ORDER BY amount DESC
LIMIT 3;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT AVG(income) AS average_income
FROM customers;

SELECT MAX(balance) AS highest_balance
FROM accounts;

SELECT SUM(amount) AS total_approved
FROM transactions
WHERE status = 'approved';