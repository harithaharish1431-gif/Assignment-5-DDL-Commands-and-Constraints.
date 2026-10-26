-- cretae database employee --


create database employee;
use employee;


-- create table departments --

create table departments(
department_id int,
department_name varchar (100));
select * from departments;


-- create table location --

create	table location (
location_id int , 
location varchar (30));
select * from location;

-- create table employees --

create table employees (
employee_id int ,
employee_name varchar (50),
gender enum ('M','F'),
age int ,
hire_date date ,
designation varchar (100),
department_id int ,
location_id int ,
salary decimal(10,2));

select * from employees;

-- alter --

alter table employees
add email varchar (100);

select	* from employees;



-- modify --

alter table employees 
modify designation varchar (200);


-- drop --

alter table employees 
drop column age;

select * from employees;


-- rename --

alter table employees 
rename column hire_date to date_of_joining;

select * from employees;


-- rename --

rename table departments to departments_info;

rename table location to locations;

-- truncate --

truncate table employees;

select * from employees;


-- drop table --

drop table employees;

-- drop database --

drop database employee;



-- Constraints --
-- drop --

drop database if exists employee;

 -- create database --
 
create database employee;
use employee;


-- create table departments --

create table departments (
department_id int primary key ,
department_name varchar (100) not null unique 
);

select * from departments;


-- create table location --

create table location (
location_id int auto_increment primary key ,
location varchar (100) not null unique );

select * from location;


-- create table employees --

create table employees (
employee_id int primary key ,
employee_name varchar (50) not null ,
gender varchar (1) check (gender in ('M','F')),
age int check (age >= 18),
hire_date date default (current_date) ,
department_id int ,
location_id int ,
foreign key (department_id )
references departments (department_id),
foreign key (location_id)
references location (location_id),
salary decimal (10,2)
);

select * from employees;


