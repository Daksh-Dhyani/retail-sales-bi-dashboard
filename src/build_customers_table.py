import sqlite3
import pandas as pd

conn = sqlite3.connect('data/superstore.db')

customers = pd.read_sql_query(
    'SELECT DISTINCT "Customer ID" AS customer_id, "Customer Name" AS customer_name, Segment AS segment FROM orders',
    conn
)

duplicates = customers['customer_id'].duplicated().sum()
print('Customers found:', len(customers))
print('Customer IDs with more than one name or segment:', duplicates)

if duplicates == 0:
    customers.to_sql('customers', conn, if_exists='replace', index=False)
    print('Table customers created')
else:
    print('Not created: customer IDs are not unique')

conn.close()