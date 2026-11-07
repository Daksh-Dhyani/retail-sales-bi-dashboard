import sqlite3
import pandas as pd

df = pd.read_csv('data/superstore_clean.csv')

conn = sqlite3.connect('data/superstore.db')
df.to_sql('orders', conn, if_exists='replace', index=False)

count = conn.execute('SELECT COUNT(*) FROM orders').fetchone()[0]
print('Rows loaded into SQLite:', count)

conn.close()