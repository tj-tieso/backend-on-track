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


INSERT INTO employees (first_name, last_name, department_id, title_id, manager_id)
VALUES
('John', 'Doe', 1, 1, NULL),
('Mike', 'Chan', 2, 1, NULL),
('Ashley', 'Rodriguez', 3, 2, NULL),
('Kevin', 'Tupik', 4, 2, NULL),
('Kunal', 'Singh', 5, 3, NULL),
('Malia', 'Brown', 6, 3, NULL),
('Sarah', 'Lourd', 7, 4, NULL),
('Tom', 'Allen', 8, 4, NULL);
