#Question.1-  Find the average salary of employees in each department.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

#Question.2- Find the total number of employees hired after 2019.
SELECT COUNT(*) AS total_employees_hired_after_2019
FROM employees
WHERE hire_date > '2019-12-31';

#Question.3- List the departments and the total salary of all employees in each department, ordered by the total salary.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

#QUESTION.4- Find the highest salary in the Finance department.                
select max(salary) as higher_salary
from employees
where department = 'finance';

#QUESTION.5-  Get the top 3 highest-paid employees.
Select *
From employees
order by salary desc
limit 3;

#QUESTION.6-  Find the department with the minimum average salary. 
Select department, avg salary as avrage_salary
From employees
Group by department
Order by avrage_salary asc
Limit 1;

#QUESTION.7-  Display the total number of employees in each department, ordered by the number of employees.
select department, count(*) as total_employees
from employees
group by department
order by total_employees;

#QUESTION.8-  Find the average salary of employees who were hired before 2020.
Select department, avg(salary) as avrag_salary
From employees
Where hired_date < '2020-01-01';

#QUESTION.9- List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
SELECT names
FROM employees
WHERE department = 'IT'
ORDER BY hire_date DESC;

#QUESTION.10-  Find the sum of salaries for all employees hired after January 1, 2019, ordered by salary. 
Select  sum(salary) as total_salaries
From employees
Where hired by ’01,01,2019’;

#QUESTION.11- . Get the employee with the lowest salary in the HR department.
SELECT *
FROM employees
WHERE department = 'HR'
ORDER BY salary ASC
LIMIT 1;

#QUESTION.12- Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC
LIMIT 2;

#QUESTION.14-  Find the highest salary in the IT department, but limit the results to the top 1 result.  
SELECT MAX(salary) AS highest_salary
FROM employees
WHERE department = 'IT';

#QUESTION.15-  Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;











