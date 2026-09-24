/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s8_gm.sql
PURPOSE: Step 8 - Call the stored procedure.
AUTHOR:  Gershon Pam Moses

NOTES:
This is how the whole pattern is triggered end-to-end going forward -- one simple call.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

EXEC [dbo].[usp_load_hello_world];
GO

SELECT * FROM [dbo].[t_hello_world];
