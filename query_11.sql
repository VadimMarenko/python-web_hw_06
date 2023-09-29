-- Середній бал, який певний викладач ставить певному студентові.
SELECT t.fullname, s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g 
JOIN students s ON g.student_id = s.id 
JOIN disciplines d ON g.discipline_id = d.id 
JOIN teachers t ON d.teacher_id = t.id 
WHERE t.id = 2 AND s.id = 2 ;