SELECT name, income
FROM customers
WHERE income > 5000;

SELECT type, status
FROM transactions
WHERE status = 'declined';

SELECT name, state
FROM customers
WHERE state IN ('BA', 'SP', 'MG');

SELECT customer_id, type, balance
FROM accounts
WHERE balance BETWEEN 2000 AND 8000;

SELECT issue_type, status
FROM issue_reports
WHERE status = 'open';