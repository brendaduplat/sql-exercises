SELECT type, COUNT(*) AS total_accounts
FROM accounts
GROUP BY type;

SELECT type, SUM(balance) AS total_balance
FROM accounts
GROUP BY type;

SELECT type, COUNT(*) AS total_transactions
FROM transactions
GROUP BY type;

SELECT status, SUM(amount) AS total_amount
FROM transactions
GROUP BY status;

SELECT state, COUNT(*) AS total_customers
FROM customers
GROUP BY state;

SELECT state, AVG(income) AS average_income
FROM customers
GROUP BY state
HAVING AVG(income) > 5000;