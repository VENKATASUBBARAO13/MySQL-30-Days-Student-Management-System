-- Day 15: Searching Students using LIKE Operator

USE amrita_college;

-- Names starting with R
SELECT *
FROM students
WHERE name LIKE 'R%';

-- Names ending with a
SELECT *
FROM students
WHERE name LIKE '%a';

-- Names containing 'an'
SELECT *
FROM students
WHERE name LIKE '%an%';

-- Names starting with S, showing name and marks only
SELECT name, marks
FROM students
WHERE name LIKE 'S%';