-- Оцінки студентів у певній групі з певного предмета на останньому занятті.
SELECT sg.name, d.name, s.fullname, g.grade
FROM grades g 
JOIN students s ON g.student_id = s.id 
JOIN disciplines d ON g.discipline_id = d.id 
JOIN study_groups sg ON s.group_id = sg.id 
WHERE sg.id = 1 AND g.discipline_id = 1 AND g.date_of = '2023-06-30'
GROUP BY s.fullname 
ORDER BY s.fullname;