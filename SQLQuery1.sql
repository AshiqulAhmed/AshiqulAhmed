use DSCI_723_AshiqulHaque_Ahmed

/*Comparison operators
= equal
<> != not equal
< less than
> greater than
<= less equal
>= greater equal
*/ 

select *
from Production.Suppliers
where country= 'UK'; 

select *
from hr.Employees
where region <> 'WA' 

select *
from hr.Employees
where region is null 

select *
from Production.Products 
where unitprice >= 10 

select *
from hr.Employees 
where birthdate > '19741231'

/* dateformat*/ 
select *
from hr.Employees 
where birthdate > '1974-12-31'
-- yyyymmdd
-- yyyy-mm-dd

/* find the last name starting with L*/ 

select *
from hr.Employees 
where lastname like 'L%'; 

select *
from hr.Employees 
where lastname not like 'L%'; 

/*both of the criteria have to be true*/
select *
from hr.Employees 
where lastname not like 'L%' and birthdate > '19741231'; 

/*one of the criteria have to be true*/
select *
from hr.Employees 
where lastname not like 'L%' or birthdate > '19741231'; 

select *
from hr.Employees 
where birthdate > '19741231'; 

/*L is anywhere in the last name*/ 
select *
from hr.Employees 
where lastname like '%L%';

/*to find the last name who has last name e as second letter*/
/*_ replaces exactly one character and % replaces any number of characters*/ 
select *
from hr.Employees 
where lastname like '_e%';