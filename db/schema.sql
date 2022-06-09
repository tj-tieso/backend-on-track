-- drop tables statements
-- roles must be dropped before departments due to the foreign key constraint that requires the departments table to exist
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
    salary DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE SET NULL
);

-- EMPLOYEE table
-- id: INT PRIMARY KEY
-- first_name: VARCHAR(30) to hold employee first name
-- last_name: VARCHAR(30) to hold employee last name
-- role_id: INT to hold reference to employee role
-- manager_id: INT to hold reference to another employee that is the manager of the current employee (null if the employee has no manager)

-- You might want to use a separate file that contains functions for performing specific SQL queries you'll need to use. A constructor function or class could be helpful for organizing these. You might also want to include a seeds.sql file to pre-populate your database, making the development of individual features much easier.