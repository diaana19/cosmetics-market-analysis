conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT Country_of_Origin,
		ROUND(AVG(Rating), 2) AS Avg_Rating,
		ROUND(AVG(Price_USD), 2) AS Avg_Price,
		COUNT(*) AS Presence
		FROM products
		GROUP BY Country_of_Origin
		ORDER BY Presence DESC
''', conn)
conn.close()
result