-- Q16
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Q17
SELECT AVG(salary) AS average_salary
FROM Employee;

-- Q18
SELECT MIN(salary) AS minimum_salary
FROM Employee;

-- Q19
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

-- Q20
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;

-- Q21
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Q22
SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;

-- Q23
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

-- Q24
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

-- Q25
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- Q26
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q27
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q28
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*) > 1;

-- Q29
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
HAVING SUM(salary) < 100000;

-- Q30
SELECT department_id, MAX(salary) AS max_salary
FROM Employee
GROUP BY department_id
HAVING MAX(salary) > 75000;

-- Q31
SELECT *
FROM Employee
ORDER BY salary ASC;

-- Q32
SELECT *
FROM Employee
ORDER BY age DESC;

-- Q33
SELECT *
FROM Employee
ORDER BY hire_date ASC;

-- Q34
SELECT *
FROM Employee
ORDER BY department_id, salary;

-- Q35
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

-- Q36
SELECT e.name, d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- Q37
SELECT p.name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Q38
SELECT e.name AS employee_name, p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- Q39
SELECT e.*, d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- Q40
SELECT d.name AS department_name, e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

-- Q41
SELECT *
FROM Employee
WHERE department_id NOT IN (
    SELECT department_id FROM Project
);

-- Q42
SELECT d.name AS department_name, COUNT(p.project_id) AS project_count
FROM Department d
JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name;

-- Q43
SELECT *
FROM Department
WHERE department_id NOT IN (
    SELECT DISTINCT department_id FROM Employee
);

-- Q44
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);

-- Q45
SELECT d.name AS department_name, AVG(e.salary) AS avg_salary
FROM Department d
JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY avg_salary DESC
LIMIT 1;

-- Q46
SELECT *
FROM Employee
WHERE salary = (
    SELECT MAX(salary)
    FROM Employee
);

-- Q47
SELECT *
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

-- Q48
SELECT MAX(salary) AS second_highest_salary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);

-- Q49
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

-- Q50
SELECT *
FROM Employee e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
    WHERE department_id = e.department_id
);

-- Q51
SELECT DISTINCT salary
FROM Employee e1
WHERE 3 = (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.salary >= e1.salary
);

-- Q52
SELECT *
FROM Employee
WHERE age > ALL (
    SELECT age
    FROM Employee
    WHERE department_id = 2
);

-- Q53
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q54
SELECT *
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Project
    GROUP BY department_id
    HAVING COUNT(project_id) >= 2
);

-- Q55
SELECT *
FROM Employee
WHERE hire_date = (
    SELECT hire_date
    FROM Employee
    WHERE name = 'Jane Smith'
);

-- 56. Select the total salary of employees hired in the year 2020.
SELECT SUM(salary) FROM Employee WHERE YEAR(hire_date) = 2020;

-- 57. Select the average salary of employees in each department, ordered by average salary descending.
SELECT department_id, AVG(salary) as avg_sal
FROM Employee 
GROUP BY department_id 
ORDER BY avg_sal DESC;

-- 58. Select departments with more than 1 employee and an average salary greater than 55000.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(*) > 1 AND AVG(salary) > 55000;

-- 59. Select employees hired in the last 2 years of the data (2020-2021), ordered by hire date.
SELECT * FROM Employee 
WHERE YEAR(hire_date) >= 2020 
ORDER BY hire_date;

-- 60. Select the total number of employees and the average salary for departments with more than 2 employees.
SELECT COUNT(*) as total_emp, AVG(salary) as avg_sal
FROM Employee 
GROUP BY department_id 
HAVING COUNT(*) > 2;

-- 61. Select the name and salary of employees whose salary is above the average salary of their department.
SELECT name, salary 
FROM Employee e1 
WHERE salary > (SELECT AVG(salary) FROM Employee e2 WHERE e2.department_id = e1.department_id);

-- 62. Select the names of employees who are hired on the same date as the oldest employee in the company.
SELECT name 
FROM Employee 
WHERE hire_date = (SELECT MIN(hire_date) FROM Employee);

-- 63. Select the department names along with the total number of projects they are working on, ordered by the number of projects.
SELECT d.name, COUNT(p.project_id) AS total_projects
FROM Department d
LEFT JOIN Project p ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects;

-- 64. Select the employee name with the highest salary in each department.
SELECT name, department_id, salary
FROM Employee e1
WHERE salary = (SELECT MAX(salary) FROM Employee e2 WHERE e2.department_id = e1.department_id);

-- 65. Select the names and salaries of employees who are older than the average age of employees in their department.
SELECT name, salary 
FROM Employee e1 
WHERE age > (SELECT AVG(age) FROM Employee e2 WHERE e2.department_id = e1.department_id);
