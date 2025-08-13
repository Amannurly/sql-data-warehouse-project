/* 
============================================================================================
Create database and schemas
============================================================================================
📌Script Purpose:
This script is used to drop and recreate the DataWarehouse database from scratch. It also sets up multiple schemas (bronze, silver, gold) to organize data in different processing stages.

⚠️ Warning:
⚠️ This script will permanently delete the existing DataWarehouse database, causing irreversible data loss. Ensure you have a backup before running it.
⚠️ All active connections will be terminated due to the single_user mode with rollback immediate.

*/



USE master;
go  

-- drop  and recreate the datawarehouse database
if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter Database DataWarehouse set single_user with rollback immediate;
	Drop database DataWarehouse;
end;
go


-- create the 'Datawarehouse' database
create database DataWarehouse;
go

use DataWarehouse;
go
--creating multiple schemas 
create schema broze;
go

create schema silver;
go

create schema gold;
go
