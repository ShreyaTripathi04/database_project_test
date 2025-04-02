/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (SELECT * FROM sys.symmetric_keys WHERE name = '10EB4200-DCB0-47A9-8378-BF7FA70E574B')
BEGIN
    CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'test@12345';
END