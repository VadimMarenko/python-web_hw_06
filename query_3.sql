-- Знайти середній бал у групах з певного предмета.
SELECT d.name, sg.name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN study_groups sg ON sg.id = s.group_id 
WHERE d.id = 1
GROUP BY sg.name
ORDER BY average_grade DESC;