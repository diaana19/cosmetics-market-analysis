conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Skin_Type,
		ROUND(AVG(Price_USD), 2) AS Avg_Price
		FROM products
		GROUP BY SKin_Type
		ORDER BY Avg_price DESC
''', conn)
conn.close()
result

conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Gender_Target,
		ROUND(AVG(Price_USD), 2) AS Avg_Price
		FROM products
		GROUP BY Gender_Target
		ORDER BY Avg_price DESC
''', conn)
conn.close()
result