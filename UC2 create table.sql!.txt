--Use Create Table employee_payroll Query to create employee payroll table with 
--columns id, name, salary and start date as column. Note Id is set to auto increment.
--IDENTITY is used for auto-increment. it starts from 1 and increment by 1

--Query to use the payroll_service Database
use payroll_service

--Query to create table
CREATE TABLE employee_payroll
(
	id int IDENTITY primary key,
	name varchar(255),
	salary int,
	start_date date
)