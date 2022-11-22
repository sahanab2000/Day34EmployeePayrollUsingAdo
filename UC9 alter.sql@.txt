--Query to use the payroll_service Database
use payroll_service

--Query to Alter payroll_service to add Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
alter table employee_payroll add Basic_pay float
alter table employee_payroll add deduction float
alter table employee_payroll add taxable_pay float
alter table employee_payroll add income_tax float
alter table employee_payroll add net_pay float


SELECT * FROM employee_payroll