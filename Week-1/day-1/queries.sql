-- Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Create Project table
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Insert data into Department table
INSERT INTO Department (department_id, name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- Insert data into Employee table
INSERT INTO Employee (emp_id, name, age, salary, department_id, hire_date) VALUES
(1, 'John Doe', 28, 50000.00, 1, '2020-01-15'),
(2, 'Jane Smith', 34, 60000.00, 2, '2019-07-23'),
(3, 'Bob Brown', 45, 80000.00, 1, '2018-02-12'),
(4, 'Alice Blue', 25, 45000.00, 3, '2021-03-22'),
(5, 'Charlie P.', 29, 50000.00, 2, '2019-12-01'),
(6, 'David Green', 38, 70000.00, 4, '2022-05-18'),
(7, 'Eve Black', 40, 55000.00, 3, '2021-08-30');

-- Insert data into Project table
INSERT INTO Project (project_id, name, department_id) VALUES
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 1),
(4, 'Project Delta', 3),
(5, 'Project Epsilon', 4),
(6, 'Project Zeta', 4),
(7, 'Project Eta', 3);




-- Week 1 Day 1 SQL Practice

-- Q1
SELECT * FROM Employee;

-- Q2
SELECT name, salary FROM Employee;

-- Q3
SELECT * FROM Employee WHERE age > 30;

-- Q4
SELECT name FROM Department;

-- Q5
SELECT * FROM Employee WHERE department_id = 1;

-- Q6
SELECT * FROM Employee WHERE name LIKE 'J%';

-- Q7
SELECT * FROM Employee WHERE name LIKE '%e';

-- Q8
SELECT * FROM Employee WHERE name LIKE '%a%';

-- Q9
SELECT * FROM Employee WHERE name LIKE '_________';

-- Q10
SELECT * FROM Employee WHERE name LIKE '_o%';

-- Q11
SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

-- Q12
SELECT * FROM Employee WHERE MONTH(hire_date) = 1;

-- Q13
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- Q14
SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

-- Q15
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);
