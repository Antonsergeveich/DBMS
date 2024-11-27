USE AcademySQL;

SELECT  
		--last_name + ' ' + first_name + ' ' + middle_name AS N'Ф.И.О.',
		[Ф.И.О.] = FORMATMESSAGE(N'%s %s %s', last_name, first_name, ISNULL (middle_name, N'')),
		birth_date				AS N'Дата рождения',
		[Возраст]			=	DATEDIFF(DAY,birth_date, GETDATE())/365,
		[group_name]			AS N'Группа',
		direction_name          AS  N'Направеление обучения'
FROM	Students, Groups, Directions
WHERE   Students.[group] = Groups.group_id
AND     Groups.direction = Directions.direction_id
--AND		group_name = N'PD_321';
--AND		direction_name = N'Компьютерная графика и дизайн'
AND		direction_name LIKE N'%графика%'
--ORDER BY birth_date DESC;--сортировка по фамилии

--Ключевое слово WHERE определяет условия отбора, 
--при помощи таких условий выбираются данные из связанных таблиц. 
--ASC -Ascending (по возрастанию);
--DESC - Descending (по убыванию);
--ORDER BY - всегда пишется последним в запросе;
ORDER BY [Возраст] DESC;