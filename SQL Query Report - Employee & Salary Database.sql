---1.Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
Select Employee_ID, Full_Name
from [dbo].[Employee Details]
where Manager_ID = '986'

---2.Write an SQL query to fetch the different projects available from the EmployeeSalary table.
Select Project
from [dbo].[Employee_Salary]

---3.Write an SQL query to fetch the count of employees working in project ‘P1’.
Select *
from [dbo].[Employee_Salary]
where Project = 'P1'

---4.Write an SQL query to find the maximum, minimum, and average salary of the employees.
Select MAX ([Salary]) AS Maximum_Salary
from [dbo].[Employee_Salary]
Select MIN ([Salary]) As Minimum_Salary 
from [dbo].[Employee_Salary]
Select AVG ([Salary]) AS Average_Salary
from [dbo].[Employee_Salary]

---5.Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
Select *
From [dbo].[Employee_Salary]
Where Salary BETWEEN 9000 AND 15000

---6.Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
Select *
from [dbo].[Employee Details]
where City = 'Toronto'

---7.Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
Select *
From [dbo].[Employee Details]
Where City = 'Califonia' or Manager_ID = '321'

---8.Write an SQL query to fetch all those employees who work on Projects other than P1.
Select *
from [dbo].[Employee_Salary]
where Project != 'P1'

---9.Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
Select [Employee_ID]
,[Project]
,[Salary]
,[Variable]
,[Salary] + [Variable] As [Total Salary]
From [dbo].[Employee_Salary]

---10. Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
Select *
From [dbo].[Employee Details]
Where ([Full_Name]) Like '%hn%'

---11. Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
Select [Employee_ID]
From [dbo].[Employee Details]
Union
Select [Employee_ID]
From[dbo].[Employee_Salary]
