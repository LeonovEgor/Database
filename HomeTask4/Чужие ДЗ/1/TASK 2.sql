SELECT 
	COUNT(*),
	DATE_FORMAT(birthday_at, '2020-%m-%d') AS birthday,
	DAYNAME(DATE_FORMAT(birthday_at, '2020-%m-%d')) AS day_of_the_week 
FROM 
	shop.users 
GROUP BY
	day_of_the_week ;