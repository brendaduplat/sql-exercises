INSERT INTO customers (name, cpf, email, state, income, registration_date) VALUES
('Ana Silva', '111.111.111-11', 'ana@example.com', 'BA', 4500.00, '2024-01-15'),
('Bruno Santos', '222.222.222-22', 'bruno@example.com', 'SP', 5200.00, '2023-08-10'),
('Carla Oliveira', '333.333.333-33', 'carla@example.com', 'RJ', 6100.00, '2022-11-20'),
('Diego Souza', '444.444.444-44', 'diego@example.com', 'MG', 3900.00, '2024-03-05'),
('Eduarda Lima', '555.555.555-55', 'eduarda@example.com', 'PE', 4800.00, '2023-06-18'),
('Felipe Costa', '666.666.666-66', 'felipe@example.com', 'RS', 5500.00, '2021-09-12'),
('Gabriela Rocha', '777.777.777-77', 'gabriela@example.com', 'PR', 7000.00, '2020-02-28'),
('Henrique Alves', '888.888.888-88', 'henrique@example.com', 'SC', 4300.00, '2024-05-01'),
('Isabela Martins', '999.999.999-99', 'isabela@example.com', 'CE', 5800.00, '2022-07-22'),
('João Pereira', '101.101.101-10', 'joao@example.com', 'AM', 4700.00, '2023-12-11');

INSERT INTO accounts (customer_id, type, balance, opening_date) VALUES
(1, 'checking', 2500.00, '2024-01-15'),
(2, 'savings', 8100.50, '2023-08-10'),
(3, 'salary', 3200.75, '2022-11-20'),
(4, 'checking', 950.00, '2024-03-05'),
(5, 'savings', 6700.20, '2023-06-18'),
(6, 'salary', 4100.00, '2021-09-12'),
(7, 'checking', 12350.00, '2020-02-28'),
(8, 'savings', 2100.80, '2024-05-01'),
(9, 'salary', 5800.40, '2022-07-22'),
(10, 'checking', 1750.00, '2023-12-11');

INSERT INTO transactions (account_id, type, amount, date, status) VALUES
(1, 'deposit', 1000.00, '2025-01-10', 'approved'),
(2, 'withdrawal', 500.00, '2025-01-12', 'approved'),
(3, 'transfer', 800.00, '2025-01-13', 'approved'),
(4, 'portability', 2500.00, '2025-01-14', 'approved'),
(5, 'deposit', 1200.00, '2025-01-15', 'approved'),
(6, 'withdrawal', 3000.00, '2025-01-16', 'declined'),
(7, 'transfer', 1500.00, '2025-01-17', 'approved'),
(8, 'deposit', 700.00, '2025-01-18', 'approved'),
(9, 'portability', 4000.00, '2025-01-19', 'declined'),
(10, 'withdrawal', 250.00, '2025-01-20', 'approved');

INSERT INTO products (name, category, monthly_revenue, launch_date) VALUES
('Digital Account', 'Bank Account', 35000.00, '2021-01-10'),
('Credit Card', 'Cards', 85000.00, '2020-06-15'),
('Personal Loan', 'Credit', 120000.00, '2019-03-20'),
('Home Insurance', 'Insurance', 42000.00, '2022-08-05');

INSERT INTO issue_reports (customer_id, service, issue_type, date, status) VALUES
(2, 'Credit Card', 'Blocked card', '2025-02-10', 'open'),
(5, 'Digital Account', 'App access error', '2025-02-11', 'resolved'),
(7, 'Personal Loan', 'Installment discrepancy', '2025-02-12', 'open'),
(9, 'Home Insurance', 'Delay in policy issuance', '2025-02-13', 'resolved');