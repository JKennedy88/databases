-- Stored Procedure

CREATE procedure [dbo].[spGetLedgerAccountTransactionDateOptions]

as



select
	'Entry Date' vchType,
	'dteLedgerAccountTransactionEntryDate' vchDateType

union

select
	'Value Date' vchType,
	'dteLedgerAccountTransactionValueDate' vchDateType