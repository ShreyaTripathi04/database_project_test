CREATE PROCEDURE GetHighSalaryEmployees  
    @MinSalary DECIMAL(10,2)  
AS  
BEGIN  
    SET NOCOUNT ON;  

    SELECT EmployeeID, FirstName, LastName, Email, Salary, HireDate  
    FROM Employees  
    WHERE Salary > @MinSalary;  
END;