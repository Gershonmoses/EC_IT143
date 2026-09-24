/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s6_gm.sql
PURPOSE: Step 6 - Load the table from the view using an ad hoc SQL script.
AUTHOR:  Gershon Pam Moses

NOTES:
TRUNCATE + INSERT is the simplest way to refresh t_hello_world from v_hello_world.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

TRUNCATE TABLE [dbo].[t_hello_world];

INSERT INTO [dbo].[t_hello_world] (Message)
SELECT Message
FROM [dbo].[v_hello_world];
GO
