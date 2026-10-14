SELECT customers.name, accounts.type, accounts.balance
FROM customers
JOIN accounts ON customers.id = accounts.customer_id;

SELECT '---' AS '';
SELECT customers.name, transactions.amount, transactions.type, transactions.status
FROM customers
JOIN accounts ON customers.id = accounts.customer_id
JOIN transactions ON accounts.id = transactions.account_id;

SELECT '---' AS '';
SELECT customers.name, issue_reports.service, issue_reports.issue_type
FROM customers
JOIN issue_reports ON customers.id = issue_reports.customer_id;

SELECT '---' AS '';
SELECT customers.name, transactions.type, transactions.status
FROM customers
JOIN accounts ON customers.id = accounts.customer_id
JOIN transactions ON accounts.id = transactions.account_id
WHERE transactions.status = 'declined';

SELECT '---' AS '';
SELECT customers.state, SUM(accounts.balance) AS total_balance
FROM customers
JOIN accounts ON customers.id = accounts.customer_id
GROUP BY customers.state;
