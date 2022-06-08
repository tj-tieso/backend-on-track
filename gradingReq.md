# User Story

## AS A business owner

I WANT to be able to view and manage the departments, roles, and employees in my company
SO THAT I can organize and plan my business

# Acceptance Criteria

GIVEN a command-line application that accepts user input

### WHEN I start the application

- THEN I am presented with the following options: `view all departments`, `view all roles`, `view all employees`, `add a department`, `add a role`, `add an employee`, `and update an employee role`

### WHEN I choose to `view all departments`

- THEN I am presented with a formatted table showing department names and department ids

### WHEN I choose to `view all roles`

- THEN I am presented with the job title, role id, the department that role belongs to, and the salary for that role

### WHEN I choose to `view all employees`

- THEN I am presented with a formatted table showing employee data, including employee ids, first names, last names, job titles, departments, salaries, and managers that the employees report to

### WHEN I choose to `add a department`

- THEN I am prompted to enter the name of the department and that department is added to the database

### WHEN I choose to `add a role`

- THEN I am prompted to enter the name, salary, and department for the role and that role is added to the database

### WHEN I choose to `add an employee`

- THEN I am prompted to enter the employee’s first name, last name, role, and manager, and that employee is added to the database

### WHEN I choose to `update an employee role`

- THEN I am prompted to select an employee to update and their new role and this information is updated in the database

# Getting Started

- _MySQL2_ package (Links to an external site.) to connect to your MySQL database and perform queries,
- _Inquirer_ package (Links to an external site.) to interact with the user via the command line, and the console.table package (Links to an external site.) to print MySQL rows to the console.

Important: You will be committing a file that contains your database credentials. start researching npm packages now that could help you.

You might also want to make your queries asynchronous. MySQL2 exposes a `.promise()` function on Connections to upgrade an existing non-Promise connection to use Promises. To learn more and make your queries asynchronous, refer to the npm documentation on MySQL2 (Links to an external site.).

Design the database schema as shown in the following image:
![db-guide](/assets/images/Challenge12-db-guide.png)
