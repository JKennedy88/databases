CREATE TABLE [dbo].[SchemaChangeLog] (
    [SchemaChangeLogID] INT            IDENTITY (1, 1) NOT NULL,
    [CreateDate]        DATETIME       NULL,
    [LoginName]         [sysname]      NULL,
    [ComputerName]      [sysname]      NULL,
    [DBName]            [sysname]      NOT NULL,
    [SQLEvent]          [sysname]      NOT NULL,
    [Schema]            [sysname]      NULL,
    [ObjectName]        [sysname]      NULL,
    [SQLCmd]            NVARCHAR (MAX) NULL,
    [XmlEvent]          XML            NOT NULL,
    [AppName]           NVARCHAR (128) NULL,
    CONSTRAINT [PK_SchemaChangeLog] PRIMARY KEY CLUSTERED ([SchemaChangeLogID] ASC)
);

