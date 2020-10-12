select round(avg(timestampdiff(year, birthday_at, now())), 1) as middle_age from users;

select  
	case
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 0 then 'Понедельник'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 1 then 'Вторник'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 2 then 'Среда'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 3 then 'Четверг'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 4 then 'Пятница'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 5 then 'Суббота'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 6 then 'Воскресенье'
		else 'не правильный формат даты'
	end as week_day,
	count(*) as summ
	from users 
group by week_day;

select exp(sum(log(id))) from products;