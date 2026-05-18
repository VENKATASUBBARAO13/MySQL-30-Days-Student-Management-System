-- Day 24: Improving Query Performance using Indexes

USE amrita_college;

-- Create index on student name
CREATE INDEX idx_student_name
ON students(name);

-- Search using indexed column
SELECT *
FROM students
WHERE name = 'Ravi Teja';

-- Search names starting with R
SELECT name, marks
FROM students
WHERE name LIKE 'R%';

-- Show indexes on students table
SHOW INDEX FROM students;