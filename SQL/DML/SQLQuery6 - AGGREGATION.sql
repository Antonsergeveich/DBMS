USE PD_318_DML;

SELECT 
		--COUNT(direction_name) 
		--group_name			AS N'Группа',
		direction_name		AS N'Направление обучения',
		COUNT(group_id)		AS N'Количество групп'
		--COUNT(student_id)	AS N'Количество студентов'
FROM        Groups,Directions
WHERE		direction = direction_id
GROUP BY	direction_name
HAVING		COUNT(group_id) < 3
;
