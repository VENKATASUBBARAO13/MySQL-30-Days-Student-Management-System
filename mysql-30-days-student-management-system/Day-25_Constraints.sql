-- Day 25: Enforcing Data Rules using Constraints

USE amrita_college;

-- Add check constraint to prevent negative marks
ALTER TABLE students
ADD CONSTRAINT chk_marks
CHECK (marks >= 0);

-- Make phone number NOT NULL
ALTER TABLE students
MODIFY phone VARCHAR(15) NOT NULL;

-- Add unique constraint on phone number
ALTER TABLE students
ADD CONSTRAINT unique_phone UNIQUE (phone);

-- Verify table structure
DESCRIBE students;