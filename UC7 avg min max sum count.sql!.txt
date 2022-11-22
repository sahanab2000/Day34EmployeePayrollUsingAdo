--Query to use the payroll_service Database
use payroll_service

--Query to Alter payroll_service to add gender
alter table employee_payroll add gender char

--Query to SUM
SELECT SUM(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

--Query to AVG
SELECT AVG(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

--Query to MIN
SELECT MIN(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

--Query to MAX
SELECT MAX(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;

--Query to Count
SELECT COUNT(salary) FROM employee_payroll WHERE gender = 'F' GROUP BY gender;


SELECT * FROM employee_payroll