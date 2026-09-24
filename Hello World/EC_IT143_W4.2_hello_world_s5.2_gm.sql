/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s5.2_gm.sql
PURPOSE: Step 5.2 - Refine the table architecture (primary key, constraints, data types).
AUTHOR:  Gershon Pam Moses

NOTES:
Rebuilds t_hello_world with a proper primary key, a NOT NULL constraint, and a refined
data type/size for the Message column instead of relying on what SELECT INTO guessed.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP TABLE IF EXISTS [dbo].[t_hello_world]
GO

CREATE TABLE [dbo].[t_hello_world] (
    HelloWorldID INT IDENTITY(1,1) PRIMARY KEY,
    Message      VARCHAR(50) NOT NULL DEFAULT ('Hello World')
);
GO
