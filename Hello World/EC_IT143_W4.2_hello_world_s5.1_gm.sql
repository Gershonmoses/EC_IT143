/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_hello_world_s5.1_gm.sql
PURPOSE: Step 5.1 - Turn the view into a table (simplest method: SELECT INTO).
AUTHOR:  Gershon Pam Moses

NOTES:
The view is v_hello_world, so the table is named t_hello_world -- the "v_" to "t_" naming
makes the source/destination relationship obvious.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP TABLE IF EXISTS [dbo].[t_hello_world]
GO

SELECT *
INTO [dbo].[t_hello_world]
FROM [dbo].[v_hello_world];
GO
