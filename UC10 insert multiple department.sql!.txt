--Query to use the payroll_service Database
use payroll_service

--Query to add Terissa as part of Sales and Marketing Department

insert into employee_payroll values('Terissa', 10000, '2022-01-01','F',123445677, 'goa', 'Sales', 5000, 1000, 1000, 1000, 7000)
insert into employee_payroll values('Terissa', 10000, '2022-01-01','F',123445677, 'goa', 'Marketing', 5000, 1000, 1000, 1000, 7000)


SELECT * FROM employee_payroll