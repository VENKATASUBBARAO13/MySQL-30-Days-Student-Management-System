-- Day 12: Identifying Below-Average Students

USE amrita_college;

-- Calculate average marks
SELECT AVG(marks) AS average_marks
FROM students;

-- Show students below average
SELECT *
FROM students
WHERE marks < (SELECT AVG(marks) FROM students);

-- Show below-average students sorted by marks
SELECT name, marks
FROM students
WHERE marks < (SELECT AVG(marks) FROM students)
ORDER BY marks ASC;

-- Count below-average students
SELECT COUNT(*) AS below_average_students
FROM students
WHERE marks < (SELECT AVG(marks) FROM students);