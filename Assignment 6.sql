create database Subquery;
use Subquery;
CREATE TABLE employee (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
insert into employee(emp_id, name, department, salary)
values (1,'John','HR',5000),
	   (2,'Alice','IT',7000),
       (3,'Bob','Finance',6000),
       (4,'Eve','IT',8000),
       (5,'Charlie','Finance',7500);
SELECT 
    *
FROM
    employee;                    
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);
insert into    departments(dept_id,dept_name)
values(1,'HR'),
      (2,'IT'),
      (3,'Finance');
SELECT 
    *
FROM
    departments;      

#1. Find employees with salaries greater than the average salary of all employees. 
SELECT 
    name
FROM
    employee
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employee);

#2. Find employees whose salary is higher than the salary of 'Alice'. 
SELECT 
    name
FROM
    employee
WHERE
    salary > (SELECT 
            salary
        FROM
            employee
        WHERE
            name = 'Alice');

#3. List employees who belong to a department that has the name 'IT'. 
SELECT 
    name
FROM
    employee
WHERE
    department = 'IT';

#4. Get the names of employees who earn the highest salary in their department.
SELECT 
    department, name
FROM
    employee
WHERE
    department = (SELECT 
            department
        FROM
            employee
        GROUP BY department
        HAVING salary = MAX(salary));
 
#5. Retrieve the departments where at least one employee earns more than 7000.
SELECT 
    department
FROM
    employee
WHERE
    emp_id IN (SELECT 
            emp_id
        FROM
            employee
        GROUP BY emp_id
        HAVING salary > 7000);
 
#6. List employees who do not belong to any department in the departments table. 
SELECT 
    name
FROM
    employee
WHERE
    department NOT IN (SELECT 
            dept_name
        FROM
            departments);

#7. Find the second-highest salary among employees.
SELECT 
    MAX(salary)
FROM
    employee
WHERE
    salary < (SELECT 
            MAX(salary)
        FROM
            employee); 
 
#8. Retrieve the names of employees who work in the department with the highest number of employees. 
SELECT 
    e.name, e.department
FROM
    employee e
WHERE
    e.emp_id = (SELECT 
            d.dept_id
        FROM
            departments d
                JOIN
            employee e ON d.dept_id = e.emp_id
        GROUP BY d.dept_id
        ORDER BY COUNT(*) DESC
        LIMIT 1);



#9. Find employees who earn more than the average salary in their department. 
SELECT 
    name, department, salary
FROM
    employee e1
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employee e2
        WHERE
            e1.department = e2.department); 

#10. Retrieve employees whose salary is above 7000 and belong to departments in the departments table. 
SELECT 
    name, department
FROM
    employee e
WHERE
    emp_id IN (SELECT 
            e.emp_id
        FROM
            departments d
        GROUP BY d.dept_id
        HAVING salary > 7000);

#11. List all departments that have no employees. 
SELECT 
    name, department
FROM
    employee
WHERE
    department IN (SELECT 
            department
        FROM
            employee
        WHERE
            emp_id IS NULL);
 
 
#12. Find employees who have the same salary as another employee in a different department.
SELECT 
    name
FROM
    employee e1
WHERE
    salary IN (SELECT 
            salary
        FROM
            employee e2
        WHERE
            e1.department <> e2.department);

#13. Get the total salary of the department with the maximum total salary. 
SELECT 
    SUM(salary)
FROM
    employee
WHERE
    department = (SELECT 
            department
        FROM
            employee
        GROUP BY department
        ORDER BY SUM(salary) DESC
        LIMIT 1);

#14. Retrieve employees whose department has more than two employees.
SELECT 
    name
FROM
    employee
WHERE
    department = (SELECT 
            department
        FROM
            employee
        GROUP BY department
        HAVING COUNT(emp_id) > 2);
 
#15. Find employees whose salary is higher than the average salary of employees in the IT department. 
SELECT 
    name
FROM
    employee
WHERE
    salary > (SELECT 
            AVG(salary)
        FROM
            employee
        WHERE
            department = 'IT');