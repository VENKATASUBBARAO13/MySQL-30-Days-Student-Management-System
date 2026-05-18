-- Day 27: Automating Queries using Stored Procedures

USE amrita_college;

-- Create procedure to get all students
DELIMITER //

CREATE PROCEDURE get_all_students()
BEGIN
    SELECT * FROM students;
END //

DELIMITER ;

-- Call procedure
CALL get_all_students();

-- Create procedure to get students by year
DELIMITER //

CREATE PROCEDURE get_students_by_year(IN yr INT)
BEGIN
    SELECT name, marks
    FROM students
    WHERE year_of_study = yr;
END //

DELIMITER ;

-- Call procedure with parameter
CALL get_students_by_year(4);