conn = sqlite3.connect('../data/cosmetics.db')
result = pd.read_sql('''
		SELECT 
			CASE
				WHEN Price_USD < 50 THEN 'Low ($10-$50)'
				WHEN Price_USD < 100 THEN 'Mid ($50-$100)'
				ELSE 'High ($100-$150)'
			END AS Price_Range,
			ROUND(AVG(Rating), 2) AS Avg_Rating,
			COUNT(*) AS Num_Products
		FROM products
		GROUP BY Price_Range
		ORDER BY Avg_Rating DESC
''', conn)
conn.close()
result