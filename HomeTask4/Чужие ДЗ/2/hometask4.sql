select round(avg(timestampdiff(year, birthday_at, now())), 1) as middle_age from users;

select  
	case
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 0 then '�����������'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 1 then '�������'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 2 then '�����'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 3 then '�������'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 4 then '�������'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 5 then '�������'
		when weekday(date_format(birthday_at, '2020-%m-%d')) = 6 then '�����������'
		else '�� ���������� ������ ����'
	end as week_day,
	count(*) as summ
	from users 
group by week_day;

select exp(sum(log(id))) from products;