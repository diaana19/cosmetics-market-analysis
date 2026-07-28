conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Category,
		ROUND(AVG(Rating), 2) AS Avg_Rating,
		ROUND(AVG(Price_USD), 2) AS Avg_Price,
		ROUND(AVG(Rating)/AVG(Price_USD), 4) AS Value_Index
		FROM products
		GROUP BY Category
		ORDER BY Value_Index DESC
''', conn)
conn.close()
result