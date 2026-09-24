/*****************************************************************************************************************
NAME:    dbo.v_players_by_position
PURPOSE: Step 4 - Turn the ad hoc SQL query into a view.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this view to answer: how many players are in each position?

NOTES:
Source table: dbo.players (Transfermarkt football data set).
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP VIEW IF EXISTS [dbo].[v_players_by_position]
GO

CREATE VIEW [dbo].[v_players_by_position]
AS
SELECT position AS Position,
       COUNT(*) AS PlayerCount
FROM dbo.players
GROUP BY position;
GO
