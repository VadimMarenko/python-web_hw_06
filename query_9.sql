-- Знайти список курсів, які відвідує студент.
SELECT s.fullname, d.name
FROM grades g 
JOIN students s ON g.student_id = s.id
JOIN disciplines d ON g.discipline_id = d.id 
WHERE s.id = 1
GROUP BY d.name;