-- Day 28: Automating Database Actions using Triggers

USE amrita_college;

-- Create log table
CREATE TABLE student_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    student_roll INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create trigger to log student updates
DELIMITER //

CREATE TRIGGER log_student_update
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
    INSERT INTO student_logs(student_roll)
    VALUES (NEW.roll_no);
END //

DELIMITER ;

-- Update student marks to activate trigger
UPDATE students
SET marks = 88
WHERE roll_no = 101;

-- View log table
SELECT * FROM student_logs;