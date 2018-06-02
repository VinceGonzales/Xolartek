-- create userId with permissions for UDF
CREATE LOGIN [DESKTOP-NAME\userId] FROM WINDOWS WITH DEFAULT_DATABASE=[XolartekDb]
USE [XolartekDb]
CREATE USER [userId] FROM LOGIN [DESKTOP-NAME\userId] WITH DEFAULT_SCHEMA=[dbo]
GRANT ALTER ON SCHEMA::dbo TO [userId]
GRANT CREATE ASSEMBLY TO [userId]
GRANT CREATE FUNCTION TO [userId]

USE [master]
GRANT EXTERNAL ACCESS assembly TO [DESKTOP-NAME\userId]
ALTER DATABASE [XolartekDb] SET TRUSTWORTHY ON
GO
-- turn on UDF feature
sp_configure 'show advanced options', 1
GO
RECONFIGURE
GO
sp_configure 'clr enabled', 1
GO
RECONFIGURE
GO
