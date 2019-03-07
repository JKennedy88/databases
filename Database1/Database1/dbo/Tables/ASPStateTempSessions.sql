CREATE TABLE [dbo].[ASPStateTempSessions] (
    [SessionId]        NVARCHAR (88)    NOT NULL,
    [Created]          DATETIME         CONSTRAINT [DF__ASPStateT__Creat__5EBF139D] DEFAULT (getutcdate()) NOT NULL,
    [Expires]          DATETIME         NOT NULL,
    [LockDate]         DATETIME         NOT NULL,
    [LockDateLocal]    DATETIME         NOT NULL,
    [LockCookie]       INT              NOT NULL,
    [Timeout]          INT              NOT NULL,
    [Locked]           BIT              NOT NULL,
    [SessionItemShort] VARBINARY (7000) NULL,
    [SessionItemLong]  IMAGE            NULL,
    [Flags]            INT              CONSTRAINT [DF__ASPStateT__Flags__5FB337D6] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK__ASPState__C9F4929097DC1B79] PRIMARY KEY CLUSTERED ([SessionId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Index_Expires]
    ON [dbo].[ASPStateTempSessions]([Expires] ASC);

