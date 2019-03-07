

CREATE trigger [tr_DDL_BlockChangesSSMS] on database 
for 
    DDL_FUNCTION_EVENTS, 
    DDL_PROCEDURE_EVENTS, 
    DDL_VIEW_EVENTS, 
    DDL_TABLE_EVENTS     
as 
if 
	@@servername like '%PROD%'
    and is_srvrolemember('sysadmin') = 0 --not sa 
    and isnull(is_srvrolemember('ssmsadmin'), 0) = 0 -- not in ssmsadmin group 
    and (
		app_name() like 'Microsoft SQL Server Management Studio%' -- using ssms
		or app_name() like 'Microsoft SQL Server Data Tools%' -- using vs ssdt
	)
    and host_name() != cast(serverproperty('ServerName') as nvarchar(128)) --not working locally 
    and suser_name() not in ('GBOBespokeApplication', 'GBOBespokeApplicationElevated', 'GPP\app.bo2') 
begin 
  print 'You must use RedGate SQL Compare to ship changes to this database'
  rollback 
end 


