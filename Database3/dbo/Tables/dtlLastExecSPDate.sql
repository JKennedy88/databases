CREATE TABLE [dbo].[dtlLastExecSPDate] (
    [ID]                 INT           IDENTITY (1, 1) NOT NULL,
    [intObjectID]        INT           NULL,
    [vchDatabaseName]    VARCHAR (100) NULL,
    [vchStoredProcedure] VARCHAR (100) NULL,
    [vchItemType]        VARCHAR (10)  NULL,
    [dteExecutionDate]   DATE          NULL,
    CONSTRAINT [PK_dtlLastExecSPDate] PRIMARY KEY CLUSTERED ([ID] ASC)
);

