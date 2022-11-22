--Query to use the payroll_service Database
use payroll_service

--Query to Alter payroll_service to add gender
alter table employee_payroll add gender char

--Query to add gender
UPDATE employee_payroll set gender ='M' where name = 'Bill' or name ='Charlie';
UPDATE employee_payroll set gender ='M' where name = 'Bill' or name ='Charlie';
UPDATE employee_payroll set gender ='F' where name = 'Aparna' or name ='Sahana';
UPDATE employee_payroll set gender ='F' where name = 'Jayshree';

SELECT * FROM employee_payroll