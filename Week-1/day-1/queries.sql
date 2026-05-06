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
