-- Знайти оцінки студентів у окремій групі з певного предмета.
SELECT sg.name, d.name, s.fullname, g.grade
FROM grades g 
JOIN study_groups sg ON g.student_id = sg.id 
JOIN students s ON g.student_id = s.id 
JOIN disciplines d ON g.discipline_id = d.id 
WHERE sg.id = 1 AND d.id = 1;