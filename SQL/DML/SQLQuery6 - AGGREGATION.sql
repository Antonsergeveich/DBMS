USE AcademySQL;

SELECT 
		--COUNT(direction_name) 
		--group_name			AS N'������',
		direction_name		AS N'����������� ��������',
		COUNT(DISTINCT group_id)		AS N'���������� �����',
		COUNT(student_id)	AS N'���������� ���������'
FROM        Groups,Directions,Students
WHERE		direction = direction_id
AND			[group]=group_id
GROUP BY	direction_name
;
