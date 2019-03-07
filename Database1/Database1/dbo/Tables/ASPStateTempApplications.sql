CREATE TABLE [dbo].[ASPStateTempApplications] (
    [AppId]   INT        NOT NULL,
    [AppName] CHAR (280) NOT NULL,
    CONSTRAINT [PK__ASPState__8E2CF7F93A08B06E] PRIMARY KEY CLUSTERED ([AppId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Index_AppName]
    ON [dbo].[ASPStateTempApplications]([AppName] ASC);

