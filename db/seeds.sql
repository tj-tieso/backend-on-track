INSERT INTO departments (name)
VALUES
('Engineering'),
('Finace'),
('Legal'),
('Sales');

INSERT INTO roles (title, salary, department_id)
VALUES
('Lead Engineer', 150000, 1),
('Software Engineer', 120000, 1),
('Account Manager', 160000, 2),
('Accountant', 125000, 2),
('Legal Team Lead', 250000, 3),
('Lawyer', 190000, 3),
('Sales Lead', 100000, 4),
('Salesperson', 80000, 4);


INSERT INTO employees (first_name, last_name, title_id, salary_id, department_id, manager_id)
VALUES
('John', 'Doe', 'Lead Engineer', 150000, 'Engineering', NULL),
('Mike', 'Chan', 'Software Engineer', 120000, 'Engineering', NULL),
('Ashley', 'Rodriguez', 'Account Manager', 160000, 'Finace', NULL),
('Kevin', 'Tupik', 'Accountant', 125000, 'Finace', NULL),
('Kunal', 'Singh', 'Legal Team Lead', 250000, 'Legal', NULL),
('Malia', 'Brown', 'Lawyer', 190000, 'Legal', NULL),
('Sarah', 'Lourd', 'Sales Lead', 100000, 'Sales', NULL),
('Tom', 'Allen', 'Salesperson', 80000, 'Sales', NULL);
