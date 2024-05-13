CREATE DATABASE company;

USE company;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO employees (employee_id, name, department_id) VALUES
(1, 'Ahsanul Irfan', 1),
(2, 'Naim', 2),
(3, 'Michael Jackson', 3),
(4, 'Einstein', 4),
(5, 'Shadu', 3);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Science'),
(2, 'Technology'),
(3, 'IT');

SELECT * FROM employees NATURAL JOIN departments;

SELECT * FROM employees INNER JOIN departments ON employees.department_id = departments.department_id;

SELECT * FROM employees LEFT JOIN departments ON employees.department_id = departments.department_id;

SELECT * FROM employees RIGHT JOIN departments ON employees.department_id = departments.department_id;