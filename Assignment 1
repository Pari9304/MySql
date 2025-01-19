create database company;
create database Company1;
use Company;

#create a table named Employees
create table Employees2 (
id int primary key,
name varchar(100),
position varchar(100),
salary decimal(10,2),
date_of_joining date);

#insert the date in the table*/
insert into Employees2 (id,name,position,salary,date_of_joining) values
(1,"John Doe","Manager",55000.00,"2020-01-15"),
(2, "Jane Smith","Developer",48000.00,"2019-07-10"),
(3,"Alice Johnson","Designer",45000.00,"2021-03-22"),
(4,"Bob Brown","Developer",50000.00,"2018-11-01");

#1 Write a Query to retrieve all employees who are developers
select * from Employees where position="Developer";

#2 Write a query to update the salary of Alice Johnson to 46000.00
update Employees 
set salary=46000.00 where id = 3;

#3 Write a query to delete the employee record for Bob Brown
delete from Employees2 where name="Bob Brown";
select * from Employees2;

#4 Write a query to update the salary of Alice Johnson to 46000.00
update Employees2
set salary=46000.00 where id = 3;

set sql_safe_updates=0;

#5 Write a query to add a new column email to the employees table
alter table Employees2 add Email varchar(50);

#6 Write a query to update the email for John Doe to john.doe@company.com
update Employees2 
set Email="john.doe@company.com" where name = "John Doe";

#7 Write a query to retrieve only the name and salary of all employees*/
select name , salary from Employees2;

#8 Write a query to order the employees by salary in descending order*/
select * from Employees2 order by salary desc;

#9 Write a query to drop the email column from the employees table*/
alter table Employees2
Drop column Email;

#10 Write a query to find the employees with highest salary*/
select max(salary) from Employees2;


