CREATE TABLE [dbo].[dtlStaffActivityLog] (
    [intStaffActivityLogID] INT           IDENTITY (1, 1) NOT NULL,
    [AuditEventTime]        DATETIME      NULL,
    [ServerName]            VARCHAR (150) NULL,
    [Database]              VARCHAR (250) NULL,
    [Schema]                VARCHAR (150) NULL,
    [Object]                VARCHAR (250) NULL,
    [Action]                VARCHAR (150) NULL,
    [LoginName]             VARCHAR (250) NULL,
    [SPID]                  INT           NULL,
    [Statement]             VARCHAR (MAX) NULL,
    CONSTRAINT [PK_dtlStaffActivityLog] PRIMARY KEY CLUSTERED ([intStaffActivityLogID] ASC)
);

