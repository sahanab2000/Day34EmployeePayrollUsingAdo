--Query to use the payroll_service Database
use payroll_service

--Query to retrieve salary data for a particular employee 
SELECT salary FROM employee_payroll WHERE name = 'Bill'

--Query to retrieve salary data for all employees who have joined in a particular data range 
--from the payroll service database
SELECT salary FROM employee_payroll WHERE start_date BETWEEN CAST('2018-01-01' AS date) AND GETDATE()

--Query to get the current date
select GETDATE()