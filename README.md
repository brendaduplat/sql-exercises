# SQL Exercises

Introductory SQL practice using SQLite on a small, fictional banking database.
Built while studying, as part of my transition into data engineering.

## Database

The database has five tables:

| Table | Description | Main columns |
|-------|-------------|--------------|
| `customers` | Bank customers | `name`, `cpf`, `email`, `state`, `income`, `registration_date` |
| `accounts` | Accounts linked to a customer | `customer_id`, `type`, `balance`, `opening_date` |
| `transactions` | Operations made on accounts | `account_id`, `type`, `amount`, `date`, `status` |
| `products` | Bank products and their monthly revenue | `name`, `category`, `monthly_revenue`, `launch_date` |
| `issue_reports` | Problems reported by customers | `customer_id`, `service`, `issue_type`, `date`, `status` |

Relationships (by convention, foreign key constraints are not declared):

- `accounts.customer_id` refers to `customers.id`
- `transactions.account_id` refers to `accounts.id`
- `issue_reports.customer_id` refers to `customers.id`

## Project structure

```
sql-exercises/
├── README.md
├── database/
│   ├── 01_schema.sql
│   ├── 02_insert_data.sql
│   └── bank_study.db
└── queries/
    ├── 01_filtering.sql
    ├── 02_sorting_and_aggregates.sql
    ├── 03_group_by.sql
    └── 04_joins.sql
```

## SQL concepts practiced

| File | Concepts |
|------|----------|
| `01_filtering.sql` | `SELECT`, `WHERE`, `IN`, `BETWEEN` |
| `02_sorting_and_aggregates.sql` | `ORDER BY`, `LIMIT`, `COUNT`, `AVG`, `MAX`, `SUM` |
| `03_group_by.sql` | `GROUP BY`, `HAVING` |
| `04_joins.sql` | `JOIN` across two and three tables, `JOIN` with `GROUP BY` |

## How to run

Requires SQLite 3 (the `sqlite3` command-line tool). From the root of the repository:

```bash
sqlite3 database/bank_study.db < database/01_schema.sql
sqlite3 database/bank_study.db < database/02_insert_data.sql
sqlite3 -header -column database/bank_study.db < queries/01_filtering.sql
```

To start over, delete `database/bank_study.db` and run the commands again.

## Notes

- All data is fictional. CPF numbers are placeholder patterns and emails use
  the `example.com` domain.
- SQLite has no date type, so dates are stored as text in `YYYY-MM-DD` format.
- The `SELECT '---' AS '';` lines in `04_joins.sql` only print a separator
  between results in the `sqlite3` command-line tool.