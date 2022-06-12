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
('Mike', 'Chan', 1, 2, NULL),
('Ashley', 'Rodriguez', 2, 3, NULL),
('Kevin', 'Tupik', 2, 4, NULL),
('Kunal', 'Singh', 3, 5, NULL),
('Malia', 'Brown', 3, 6, NULL),
('Sarah', 'Lourd', 4, 7, NULL),
('Tom', 'Allen', 4, 8, NULL);
