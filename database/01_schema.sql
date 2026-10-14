CREATE TABLE customers (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    name              TEXT NOT NULL,
    cpf               TEXT NOT NULL UNIQUE,
    email             TEXT,
    state             TEXT,
    income            REAL,
    registration_date TEXT
);

CREATE TABLE accounts (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id  INTEGER,
    type         TEXT,
    balance      REAL,
    opening_date TEXT
);

CREATE TABLE transactions (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    account_id  INTEGER,
    type        TEXT,
    amount      REAL,
    date        TEXT,
    status      TEXT
);

CREATE TABLE products (
    id              INTEGER PRIMARY KEY AUTOINCREMENT,
    name            TEXT,
    category        TEXT,
    monthly_revenue REAL,
    launch_date     TEXT
);

CREATE TABLE issue_reports (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    service     TEXT,
    issue_type  TEXT,
    date        TEXT,
    status      TEXT
);