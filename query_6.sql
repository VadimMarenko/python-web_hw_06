-- Знайти список студентів у певній групі.
SELECT sg.name, s.fullname 
FROM study_groups sg   
JOIN students s  ON sg.id = s.group_id  
WHERE sg.id = 1;