.system cls
.mode table

.tables

-- SELECT * FROM Departments;
-- 
-- 
-- SELECT * FROM students;
-- 

SELECT "roll_number","code"
FROM "students"
JOIN "departments"
ON "code"="department";

