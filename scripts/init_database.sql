/*
==================================================================
Create Database and Schemas
==================================================================
🎯Script Purpose : 
    This Script creates a new Database named "DATAWAREHOUSE" after checking if it exists.
    If the Database exists, it is dropped and recreated. Additionally, the query sets up 
    three schemas in the database named: "bronze", "silver", "gold".

⚠️Warning : 
    Running this script will drop the entire "DATAWAREHOUSE" database if it exists.
    All the data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO 

-- Drop and Recreate the "DATAWAREHOUSE" Database 
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = "DATAWAREHOUSE")
BEGIN 
	ALTER DATABASE DATAWAREHOUSE SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DATAWAREHOUSE;
END;
GO

-- Create the "DATAWAREHOUSE" Database
CREATE DATABASE DATAWAREHOUSE;

USE DATAWAREHOUSE;


-- Create Schemas 

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver
GO

CREATE SCHEMA gold;
GO
