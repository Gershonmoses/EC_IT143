/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_european_football_s3_gm.sql
PURPOSE: Step 3 - Create an ad hoc SQL query.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

SELECT position AS Position,
       COUNT(*) AS PlayerCount
FROM dbo.players
GROUP BY position
ORDER BY PlayerCount DESC;
