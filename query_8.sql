-- Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) as average_grade
FROM grades g 
JOIN disciplines d ON g.discipline_id = d.id
JOIN  teachers t ON d.teacher_id = t.id 
WHERE t.id = 1
GROUP BY d.name;