-- Day 30: Final Project Queries
-- Amrita Sai Institute of Science and Technology
-- Student Management Database System

USE amrita_college;

-- 1. View all students
SELECT * FROM students;

-- 2. View all departments
SELECT * FROM departments;

-- 3. Student + Department Report
SELECT s.roll_no, s.name, s.year_of_study, s.marks, d.dept_name
FROM students s
JOIN departments d
ON s.dept_id = d.dept_id
ORDER BY s.marks DESC;

-- 4. Grade System
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 80 THEN 'A'
    WHEN marks >= 60 THEN 'B'
    WHEN marks >= 50 THEN 'C'
    WHEN marks >= 40 THEN 'D'
    ELSE 'F'
END AS grade
FROM students
ORDER BY marks DESC;

-- 5. Pass/Fail Result Sheet
SELECT roll_no, name, marks,
CASE
    WHEN marks >= 40 THEN 'PASS'
    ELSE 'FAIL'
END AS result
FROM students;

-- 6. Batch-wise Average Marks
SELECT year_of_study, AVG(marks) AS average_marks
FROM students
GROUP BY year_of_study;

-- 7. Batch-wise Student Count
SELECT year_of_study, COUNT(*) AS total_students
FROM students
GROUP BY year_of_study;

-- 8. Department-wise Student Count
SELECT d.dept_name, COUNT(s.roll_no) AS total_students
FROM departments d
LEFT JOIN students s
ON d.dept_id = s.dept_id
GROUP BY d.dept_name;

-- 9. Top 3 Students
SELECT name, marks
FROM students
ORDER BY marks DESC
LIMIT 3;

-- 10. Below Average Students
SELECT name, marks
FROM students
WHERE marks < (SELECT AVG(marks) FROM students)
ORDER BY marks ASC;

-- 11. Failed Students
SELECT roll_no, name, marks
FROM students
WHERE marks < 40;

-- 12. View Created Report
SELECT * FROM student_department_view;

-- 13. Show Indexes
SHOW INDEX FROM students;

-- 14. Show Logs
SELECT * FROM student_logs;