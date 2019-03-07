CREATE TABLE [dbo].[dtlAppActivityLog] (
    [intAppActivityLogID] INT           IDENTITY (1, 1) NOT NULL,
    [AuditEventTime]      DATETIME      NULL,
    [ServerName]          VARCHAR (150) NULL,
    [Database]            VARCHAR (250) NULL,
    [Schema]              VARCHAR (150) COLLATE Latin1_General_BIN2 NULL,
    [Object]              VARCHAR (250) COLLATE Latin1_General_BIN2 NULL,
    [Action]              VARCHAR (150) NULL,
    [LoginName]           VARCHAR (250) COLLATE Latin1_General_BIN2 NULL,
    [SPID]                INT           NULL,
    [Statement]           VARCHAR (MAX) NULL,
    CONSTRAINT [PK__dtlAppActivityLog] PRIMARY KEY CLUSTERED ([intAppActivityLogID] ASC)
);

