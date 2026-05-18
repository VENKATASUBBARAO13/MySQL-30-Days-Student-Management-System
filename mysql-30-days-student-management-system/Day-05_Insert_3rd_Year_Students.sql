-- Day 5: Insert 3rd Year Students

USE amrita_college;

INSERT INTO students VALUES
(201, 'Harsha Vardhan', '9393939393', '2022-06-20', 3, 79),
(202, 'Divya Sri', '9494949494', '2022-06-20', 3, 85),
(203, 'Pavan Kumar', '9585858585', '2022-06-20', 3, 67),
(204, 'Keerthi', '9676767676', '2022-06-20', 3, 90);

-- Verify inserted data
SELECT * FROM students;