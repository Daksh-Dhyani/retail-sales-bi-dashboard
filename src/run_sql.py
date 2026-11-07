import sqlite3
import sys
import pandas as pd

sql_file = sys.argv[1]

with open(sql_file, 'r') as f:
    query = f.read()

conn = sqlite3.connect('data/superstore.db')
result = pd.read_sql_query(query, conn)
conn.close()

print(result.to_string(index=False))