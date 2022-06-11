-- drop tables statements
-- roles must be dropped before departments due to the foreign key constraint that requires the departments table to exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS departments;

-- DEPT table
CREATE TABLE departments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- ROLE table
CREATE TABLE roles (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,0) NOT NULL,
    department_id VARCHAR(30)
);

CREATE TABLE employees (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    title_id VARCHAR(30),
    salary_id DECIMAL(9,0) NOT NULL,
    department_id VARCHAR(30),
    manager_id VARCHAR(30)
);

--     CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE SET NULL,
--     CONSTRAINT fk_title FOREIGN KEY (title_id) REFERENCES roles(title) ON DELETE SET NULL,
--     CONSTRAINT fk_salary FOREIGN KEY (salary_id) REFERENCES roles(salary) ON DELETE SET NULL,


-- You might want to use a separate file that contains functions for performing specific SQL queries you'll need to use. 
-- A constructor function or class could be helpful for organizing these. 