SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
USE [COAL]
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO
BEGIN TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping DDL triggers'
GO
DROP TRIGGER [tr_DDL_BlockChangesSSMS] ON DATABASE
GO
DROP TRIGGER [tr_DDL_SchemaChangeLog] ON DATABASE
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping [dbo].[spClearOpeningClosingBalances_Value]'
GO
DROP PROCEDURE [dbo].[spClearOpeningClosingBalances_Value]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering [dbo].[spGetLedgerAccountTransactionDateOptions]'
GO
-- Stored Procedure

ALTER procedure [dbo].[spGetLedgerAccountTransactionDateOptions]

as



select
	'Entry Date' vchType,
	'dteLedgerAccountTransactionEntryDate' vchDateType

union

select
	'Value Date' vchType,
	'dteLedgerAccountTransactionValueDate' vchDateType


GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[SchemaChangeLog]'
GO
REVOKE DELETE ON  [dbo].[SchemaChangeLog] TO [db_user]
GO
REVOKE ALTER ON  [dbo].[SchemaChangeLog] TO [db_user]
GO
REVOKE UPDATE ON  [dbo].[SchemaChangeLog] TO [db_user]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[dtlLedgerAccountTransactionJournals]'
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\app.bo2]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\app.bo2]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\app.bo2]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactionJournals] TO [GPP\SQL.STAGING-CPT.ReadWriteExecAlter]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[dtlLedgerAccountTransactions]'
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\app.bo2]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\app.bo2]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\app.bo2]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExec]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
REVOKE DELETE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE UPDATE ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.SQL01-PROD.TempAccess]
GO
REVOKE ALTER ON  [dbo].[dtlLedgerAccountTransactions] TO [GPP\SQL.STAGING-CPT.ReadWriteExecAlter]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[dtlPostingsMovementToJournals]'
GO
REVOKE ALTER ON  [dbo].[dtlPostingsMovementToJournals] TO [GPP\SQL.STAGING-CPT.ReadWriteExecAlter]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[dtlPostings]'
GO
REVOKE ALTER ON  [dbo].[dtlPostings] TO [GPP\SQL.SQL01-PROD.ReadWriteExecAlter]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Altering permissions on  [dbo].[dtlTransactionPointMovementsProcessed]'
GO
REVOKE ALTER ON  [dbo].[dtlTransactionPointMovementsProcessed] TO [GPP\SQL.STAGING-CPT.ReadWriteExecAlter]
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
PRINT N'Dropping schemas'
GO
DROP SCHEMA [GPP\SQL.Admin]
GO
DROP SCHEMA [GPP\SQL.SQL01-PROD.TempAccess]
GO
DROP SCHEMA [GPP\SQL.STAGING-CPT.ReadWriteExecAlter]
GO
COMMIT TRANSACTION
GO
IF @@ERROR <> 0 SET NOEXEC ON
GO
-- This statement writes to the SQL Server Log so SQL Monitor can show this deployment.
IF HAS_PERMS_BY_NAME(N'sys.xp_logevent', N'OBJECT', N'EXECUTE') = 1
BEGIN
    DECLARE @databaseName AS nvarchar(2048), @eventMessage AS nvarchar(2048)
    SET @databaseName = REPLACE(REPLACE(DB_NAME(), N'\', N'\\'), N'"', N'\"')
    SET @eventMessage = N'Redgate SQL Compare: { "deployment": { "description": "Redgate SQL Compare deployed to ' + @databaseName + N'", "database": "' + @databaseName + N'" }}'
    EXECUTE sys.xp_logevent 55000, @eventMessage
END
GO
DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF
IF (@Success = 1) PRINT 'The database update succeeded'
ELSE BEGIN
	IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
	PRINT 'The database update failed'
END
GO
