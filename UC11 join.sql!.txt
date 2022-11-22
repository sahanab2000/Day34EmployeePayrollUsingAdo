--Query to use the payroll_service Database
use payroll_service

--CompanyTable--
Create Table Company
(
CompanyId int primary key identity,
CompanyName varchar(255)
)
Insert Into Company Values('TCS')
Insert Into Company Values('Wipro')
Insert Into Company Values('Infosys')

------employee table ----------
create table employee
(
	empID int primary key identity(1001, 1),
	empName varchar(255),
	empGender char,
	empAddress varchar(255),
	empPhone bigint,
	empStartDate date,
	CompanyId int references Company(CompanyId)
)

--Query to insert some data in the employee table
Insert into employee values ('Sarvesh', 'M','Faridabad',9876543210,'2022-11-15',1)
Insert into employee values ('Survesh', 'M','Gurgaon',8765432109, '2018-10-15',2)
Insert into employee values ('Vaibhav', 'M','Nashik',7654321098, '2022-09-15',3)
Insert into employee values ('vishal', 'M','Jamshedpur',6543210987, '2022-08-15',1)
Insert into employee values ('Saurabh', 'M','Pune',9654321087, '2019-07-15',2)
Insert into employee values ('Aparna', 'F','patna',9765432108, '2022-06-15',3)
Insert into employee values ('Sahana', 'F','Banguluru',9543210876, '2016-05-15',1)
Insert into employee values ('Jayshree', 'F','Mumbai',9876453210,'2022-04-15',2)
Insert into employee values ('Bill', 'M','New York',1876543210, '2018-01-01',3)
Insert into employee values ('Charlie', 'M','Silicon',2876543210, '2017-01-01',1)

------Department table ----------
Create Table Department
(
DeptId int primary key identity(10001,1),
DeptName varchar(255)
)
Insert Into Department values('Developer')
Insert Into Department values('Tester')
Insert Into Department values('Manager')
Insert Into Department values('Sales')
Insert Into Department values('HR')
Insert Into Department values('Finance')



------Department table ----------
Create Table Payroll
(
empID int references employee(empID),
BasicPay float,
Deductions float,
TaxablePay float,
IncomeTax float,
NetPay float,
)
Insert Into Payroll values(1001,100,10,120,10,10001)
Insert Into Payroll values(1002,200,20,220,20,10002)
Insert Into Payroll values(1003,300,30,320,30,10001)
Insert Into Payroll values(1004,100,10,120,10,10003)
Insert Into Payroll values(1005,200,20,220,20,10001)
Insert Into Payroll values(1006,300,30,320,30,10004)
Insert Into Payroll values(1007,100,10,120,10,10005)
Insert Into Payroll values(1008,200,20,220,20,10001)
Insert Into Payroll values(1009,300,30,320,30,10006)
Insert Into Payroll values(1010,300,30,320,30,10004)


------EmployeeDepartment relation table ----------
Create Table EmployeeDepartment
(
empID int references employee(empID),
DeptId int references Department(DeptId),
)
Insert Into EmployeeDepartment values(1001,10001)
Insert Into EmployeeDepartment values(1002,10002)
Insert Into EmployeeDepartment values(1003,10001)
Insert Into EmployeeDepartment values(1004,10001)
Insert Into EmployeeDepartment values(1005,10003)
Insert Into EmployeeDepartment values(1006,10001)
Insert Into EmployeeDepartment values(1007,10004)
Insert Into EmployeeDepartment values(1008,10001)
Insert Into EmployeeDepartment values(1009,10005)
Insert Into EmployeeDepartment values(1010,10006)

select * from EmployeeDepartment
select * from Company
select * from employee
select * from Department
select * from Payroll



--select CompanyId,CompanyName,empID,empName,empGender, empAddress, empPhone, empStartDate,DeptName,DeptId,
select CompanyName,empName,empGender, empAddress, empPhone, empStartDate,DeptName,BasicPay,Deductions,TaxablePay,IncomeTax,NetPay 
from Company
inner join employee on Company.CompanyId = employee.CompanyId
inner join Payroll on Payroll.empID = employee.empID
inner join EmployeeDepartment on EmployeeDepartment.empID = employee.empID
inner join Department on Department.DeptId = EmployeeDepartment.DeptId
order by CompanyName asc