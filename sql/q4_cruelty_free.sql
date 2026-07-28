conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Country_of_Origin,
		ROUND(SUM(Cruelty_Free) * 100.0 / COUNT(*), 2) AS Avg_Cruelty_Free
		FROM products
		GROUP BY Country_of_Origin
		ORDER BY Avg_Cruelty_Free DESC
''', conn)
conn.close()
result

conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Brand,
		ROUND(SUM(Cruelty_Free) * 100.0 / COUNT(*), 2) AS Avg_Cruelty_Free
		FROM products
		GROUP BY Brand
		ORDER BY Avg_Cruelty_Free DESC
''', conn)
conn.close()
result