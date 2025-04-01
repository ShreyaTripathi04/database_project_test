CREATE TABLE [dbo].[Employees] (
    [EmployeeID] INT             IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (50)   NULL,
    [LastName]   NVARCHAR (50)   NULL,
    [Email]      NVARCHAR (100)  NULL,
    [Salary]     DECIMAL (10, 2) NULL,
    [HireDate]   DATETIME        DEFAULT (getdate()) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

