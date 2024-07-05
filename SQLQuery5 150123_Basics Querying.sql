CREATE TABLE EmployeeDemographics
(EmployeeID int,
 EmployeeName Varchar(20)
 )

SELECT * FROM EmployeeDemographics
ALTER TABLE EmployeeDemographics ADD FirstName varchar(50), LastName varchar(50), Age int, Gender varchar(50); 

CREATE TABLE EmployeeSalary
(EmployeeID int,
 Jobtitle Varchar(50),
 Salary int,
 )

 INSERT INTO EmployeeDemographics VALUES
 (1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')


 Select*from EmployeeDemographics
 
 Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000)

SELECT*from EmployeeSalary

SELECT*from EmployeeDemographics
SELECT TOP 5* FROM EmployeeDemographics
SELECT DISTINCT( EmployeeID ) from EmployeeDemographics
SELECT DISTINCT (Gender) from EmployeeDemographics

SELECT COUNT(lastname) AS Count_lastname from EmployeeDemographics
SELECT COUNT(Age) from EmployeeDemographics
SELECT MAX(Salary) from EmployeeSalary
SELECT MIN (Salary) from EmployeeSalary
SELECT AVG (SALARY) from EmployeeSalary

SELECT Salary from EmployeeSalary Where Salary Between 36000 AND 45000

SELECT * FROM EmployeeDemographics Where Age>30
SELECT*FROM EmployeeDemographics Where FirstName ='Jim'
select * from EmployeeSalary Where Salary=45000
SELECT*FROM EmployeeDemographics Where Age>30 AND Gender ='MALE'
SELECT Salary from EmployeeSalary Where Salary=45000 or Jobtitle='Salesperson'

SELECT LastName from EmployeeDemographics where LastName Like'S%'
SELECT FirstName from EmployeeDemographics where FirstName Like 'M%'

SELECT FirstName from EmployeeDemographics Where Firstname Like '%a%'
SELECT lastName from EmployeeDemographics where lastName like '%a%'

SELECT * from EmployeeDemographics Where Firstname is NOT Null

select Distinct(Gender) from EmployeeDemographics

SELECT Gender from EmployeeDemographics Group by Gender

select Age from EmployeeDemographics Group by Age

SELECT Gender,Count(Gender) from EmployeeDemographics Group by Gender
SELECT Age, Count(Age) from EmployeeDemographics Group By Age

SELECT Gender, Count(Gender) from EmployeeDemographics Where Gender='Male' Group by Gender
SELECT Gender, Count(Gender) from EmployeeDemographics Where Age>30 Group by Gender

SELECT Gender, Count(Gender) AS Count_Gender from EmployeeDemographics Where Age>30 Group by Gender order by Count_gender Desc
SELECT Age from EmployeeDemographics Where Age >30 Group By Age Order By Age Asc
SELECT firstName from EmployeeDemographics order By FirstName Asc
SELECT age from EmployeeDemographics Order By Age Asc
SELECT Salary from EmployeeSalary Group By Salary order By Salary Asc

SELECT Max(salary )from EmployeeSalary
SELECT FirstName, LastName from EmployeeDemographics
SELECT concat ('FirstName', 'LastName') AS Full_Name from EmployeeDemographics

SELECT*from EmployeeDemographics
SELECT*from EmployeeSalary

SELECT*FROM EmployeeDemographics Inner join EmployeeSalary On EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 
SELECT*FROM EmployeeDemographics FULL OUTER join EmployeeSalary On EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 
SELECT*FROM EmployeeDemographics LEFT OUTER join EmployeeSalary On EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID
SELECT*FROM EmployeeDemographics RIGHT OUTER join EmployeeSalary On EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Jobtitle, Salary from EmployeeDemographics 
Inner Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Jobtitle, Salary from EmployeeDemographics 
Right Outer Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Jobtitle, Salary from EmployeeDemographics 
Right Outer Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Jobtitle, Salary from EmployeeDemographics 
Left Outer Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Jobtitle, Salary from EmployeeDemographics 
Left Outer Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT * from EmployeeDemographics 
Full Outer Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID 

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,Salary from EmployeeDemographics 
Inner Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName,Salary from EmployeeDemographics 
Inner Join EmployeeSalary on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID
Where FirstName<> 'Michael' ORDER BY Salary DESC

SELECT Jobtitle, Salary from EmployeeDemographics Inner Join  EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID
Where Jobtitle =' Salesman'

SELECT Jobtitle, AVG(Salary) from EmployeeDemographics Inner Join  EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary. EmployeeID
Where Jobtitle =' Salesman'Group By Jobtitle

Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

Select*from WareHouseEmployeeDemographics
Select*from EmployeeDemographics

SELECT* from EmployeeDemographics Full outer Join WareHouseEmployeeDemographics
On EmployeeDemographics.EmployeeID= WareHouseEmployeeDemographics.EmployeeID

Select*from WareHouseEmployeeDemographics UNION
Select*from EmployeeDemographics

Select*from WareHouseEmployeeDemographics UNION ALL
Select*from EmployeeDemographics ORDER BY EmployeeID

SELECT EmployeeID, FirstName, Age from EmployeeDemographics Union ALL
Select EmployeeID, Jobtitle, Salary from EmployeeSalary ORDER BY EmployeeID ASC

SELECT EmployeeID, FirstName, Age from EmployeeDemographics Union ALL
Select EmployeeID, Jobtitle, Salary from EmployeeSalary ORDER BY Age Asc

SELECT FirstName,LastName, Age From EmployeeDemographics Where Age IS not Null

SELECT FirstName,LastName, Age, 
CASE
When Age>30 Then 'Old'
Else 'Young'
End
From EmployeeDemographics

SELECT FirstName,LastName, Age, 
CASE
When Age>30 Then 'Old'
When Age Between 27 And 30 Then 'Young'
Else 'Baby'
End
From EmployeeDemographics WHERE AGE IS NOT NULL order by age

SELECT* from EmployeeDemographics Join EmployeeSalary 
On EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

SELECT FirstName, LastName, Jobtitle, Salary from EmployeeDemographics Join EmployeeSalary 
On EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID

SELECT Distinct FirstName, LastName, Jobtitle, Salary,
Case
When Jobtitle = 'Salesman' then Salary+ (Salary * .10)
When Jobtitle = 'Accountant' then Salary+ (Salary * .05)
When Jobtitle = 'HR' then Salary+ (Salary * .003)
Else Salary+ ( Salary* .03) 
END AS Salaryafterraise
from EmployeeDemographics Join EmployeeSalary 
On EmployeeDemographics.EmployeeID= EmployeeSalary.EmployeeID
	
SELECT Jobtitle,Count(Jobtitle) from EmployeeDemographics 
Join EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary.EmployeeID
Group By Jobtitle 

SELECT Jobtitle,Count(Jobtitle) from EmployeeDemographics 
Join EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary.EmployeeID
Group By Jobtitle 
HAVING COUNT(Jobtitle)>1

SELECT Jobtitle,AVG(Salary) from EmployeeDemographics 
Join EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary.EmployeeID
Group By Jobtitle 
ORDER BY AVG(Salary)
----HAVING COUNT(Jobtitle)>1

SELECT Jobtitle,AVG(Salary) from EmployeeDemographics 
Join EmployeeSalary
on EmployeeDemographics. EmployeeID= EmployeeSalary.EmployeeID
Group By Jobtitle 
HAVING AVG(Salary)>45000
ORDER BY AVG(Salary)

SELECT Age from EmployeeDemographics Group By Age Having Age >30

SELECT*from EmployeeDemographics
Update EmployeeDemographics
SET EmployeeID=1009
Where FirstName='Kevin' and LastName='Malone'

 
Update WareHouseEmployeeDemographics
SET Age =20
Where FirstName ='Darryl'

Delete From EmployeeDemographics Where EmployeeID=1005

SELECT FirstName As Fname from EmployeeDemographics
SELECT FirstName +' '+LastName AS FullName
from EmployeeDemographics

SELECT AVG(Age)AS AVg_Age
from EmployeeDemographics

SELECT Distinct Demo.EmployeeID, Sal.Salary
from EmployeeDemographics as Demo
Join EmployeeSalary As Sal
On Demo. EmployeeID= Sal.EmployeeID

SELECT*From EmployeeDemographics
Select *From EmployeeSalary

SELECT * 
From EmployeeDemographics 
Join EmployeeSalary
On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

SELECT Distinct FirstName,LastName, Age, Salary, COUNT(Gender) Over (Partition BY Gender) As TotalGender
From EmployeeDemographics 
Join EmployeeSalary
On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

	SELECT Distinct FirstName,LastName,Gender,Salary, COUNT(Gender)
	From EmployeeDemographics 
	Join EmployeeSalary
	On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
	Group By FirstName,LastName,Gender,Salary 

	WITH CTE_Employee as
	(SELECT Distinct FirstName,LastName, Age, Salary, COUNT(Gender) Over (Partition BY Gender) As TotalGender
	,AVG(Salary) Over (Partition BY Gender) As AvgSalary
From EmployeeDemographics 
Join EmployeeSalary
On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
Where Salary>'45000'
)



SELECT FirstName, AvgSalary 
from CTE_Employee


CREATE TABLE #Temp_Employee(
EmployeeID Int,
Jobtitle Varchar(80),
Salary Int)

SELECT* FROM #Temp_Employee

INSERT INTO #Temp_Employee values
('1000', 'HR','45000')

INSERT INTO #Temp_Employee
SELECT*
FROM EmployeeSalary

CREATE TABLE #Temp_Employee2(
Jobtitle Varchar(50),
EmloyeesperJob int,
Age Int,
AvgSalary Int)