-- Список курсів, які певному студенту читає певний викладач.
SELECT t.fullname, s.fullname, d.name
FROM grades g 
JOIN disciplines d ON g.discipline_id = d.id 
JOIN students s ON g.student_id = s.id 
JOIN teachers t ON d.teacher_id = t.id 
WHERE t.id = 2 AND s.id = 5
GROUP BY d.name;