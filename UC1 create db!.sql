
--Query to create the payroll_service database
create database payroll_service

--Query to see the name of all the Databases
select name from master.dbo.sysdatabases

--Query to see the database with the size 
exec sp_databases

--Query to see all the database with all the columns
select * from sys.databases

--Query to see the user-defined database
select * from sys.databases WHERE name NOT IN('master', 'tempdb', 'model', 'msdb')

--Query to use the payroll_service Database
use payroll_service

--drop database payroll_service