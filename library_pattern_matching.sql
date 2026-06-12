#Create a database named library
Create database library;
use library;

#Create a table named books
create table books (
id int primary key ,
title varchar(255),
author varchar(100),
year int,
genre varchar(100));

#insert values into the table
insert into books (id,title,author,year,genre)
values (1,"The Great Gatsby","F Scott Fitzgerald",1925,"Fiction"),
(2,"Pride and Prejudice","Jane Austen",1813,"Romance"),
(3,"To Kill a Mockingbird","Harper Lee",1960,"Fiction"),
(4,"1984","George Orwell",1949,"Dystopian"),
(5,"Moby Dick","Herman Melville",1851,"Adventure");

#1 Write a query to select all books where the title starts with the letter "T" using like operator
select * from books where title like "T%";

#2 Write a query to select all books where the author's name ends with "son" using like operator*/
select * from books where author like "%son";

#3 Write a query to select all books where the title contains the word "and" using like operator*/
select * from books where title like "% and %";

#4 Write a query to retrieve all books where the title ends with the word "bird" using like operator*/
select * from books where title like "%bird";

#5 Write a query to find all books where the title has exactly 3 characters using Regexp operator*/
select * from books where title regexp "^[3]$";

#6 Write a query to select all books where the title contains a number using Regexp operator*/
select * from books where title regexp "[0-9]";

#7 Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using Regexp operator*/
select * from books where author regexp "^[A-Ja-j]";

#8 Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using Regexp operator*/
select * from books where genre regexp "^(Fiction|Adventure)$";

#9 Write a query to find all books where the title contains atleast one uppercase letter using Regexp operator*/
select * from books where title regexp "[A-Z]";

#10 Write a query to find all books where the year of publication is between 1800 and 1950 using the like operator*/
select * from books where year like "18%" or year like "1950%";

#11 Write a query to retrieve all books where the author's name contains exactly two words using the Regexp operator*/
select * from books where author regexp "^[A-Za-z]+[A-Za-z]";

#12 Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the Regexp operator*/
select * from books where title regexp "^[p-]";

#13 Write a query to find all books where the title contains any special character using the Regexp operator*/
select * from books where title regexp "[[:punct:]]";




