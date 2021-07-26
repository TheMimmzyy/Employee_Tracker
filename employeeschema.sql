DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE dept_table (
    id INTEGER AUTO_INCREMENT NOT NULL,
    dept_name VARCHAR(25),
    PRIMARY KEY (id)
);

CREATE TABLE role_table (
    id INTEGER AUTO_INCREMENT NOT NULL,
    title VARCHAR(25),
    salary DECIMAL(10, 2),
    dept_id INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee_table (
    id INTEGER AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(25),
    last_name VARCHAR(20),
    role_id INTEGER NOT NULL,
    manager_id INTEGER,
    PRIMARY KEY (id)
);

-- dept_table seed
INSERT INTO dept_table (id, dept_name)
VALUES (1, "IT"),
(2, "HR"),
(3, "Legal"),
(4, "Finance"),
(5, "Administration");

-- role_table seed
INSERT INTO role_table (id, title, salary, dept_id)
VALUES (1, "Lawyer", 160000, 3),
(2, "Accountant", 137000, 4),
(3, "Receptionist", 100000, 5),
(4, "Project Manager", 140000, 2),
(5, "Software Engineer", 120000, 1);

-- employee_table seed
INSERT INTO employee_table (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Mr.", "Anderson", 1, 1),
(2, "Mr.", "Anderson", 2, 2),
(3, "Mr.", "Anderson", 3, 3),
(4, "Dante", "Hall", 4, NULL),
(5, "Cody", "Craig", 5, NULL);

-- queries
SELECT * FROM dept_table;
SELECT * FROM role_table;
SELECT * FROM employee_table;