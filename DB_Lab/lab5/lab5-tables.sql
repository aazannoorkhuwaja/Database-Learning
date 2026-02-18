DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS employees;

Pragma foreign_keys = ON;

-- Departments table
CREATE TABLE departments (
    code TEXT PRIMARY KEY,
    name TEXT NOT NULL
);

-- Students table
CREATE TABLE students (
    roll_number TEXT PRIMARY KEY,
    name TEXT,
    department TEXT REFERENCES departments(code)
);

-- Employees table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    manager_id INTEGER,
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

-- Insert departments
INSERT INTO departments (code, name) VALUES
('CS', 'Computer Science'),
('SE', 'Software Engineering'),
('DS', 'Data Science'),
('AI', 'Artificial Intelligence'),
('EE', 'Electrical Engineering');

-- Insert students
INSERT INTO students (roll_number, name, department) VALUES
('24P-1001', 'Alice Johnson', 'CS'),
('24P-1002', 'Bob Smith', 'SE'),
('24P-1003', 'Charlie Brown', 'DS'),
('24P-1004', 'David Lee', 'AI'),
('24P-1005', 'Eva Green', 'EE'),
('24P-1006', 'Frank White', 'CS'),
('24P-1007', 'Grace Kim', 'SE'),
('24P-1008', 'Hannah Scott', 'DS'),
('24P-1009', 'Ian Clark', 'AI'),
('24P-1010', 'Julia Adams', 'EE');

-- Insert employees
INSERT INTO employees (emp_id, name, manager_id) VALUES
(1, 'CEO', NULL),
(2, 'CTO', 1),
(3, 'CFO', 1),
(4, 'Dev1', 2),
(5, 'Dev2', 2),
(6, 'Accountant', 3),
(7, 'HR', 1),
(8, 'Intern1', 4),
(9, 'Intern2', 4),
(10, 'Analyst', 3);