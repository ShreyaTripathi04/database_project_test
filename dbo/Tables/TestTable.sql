CREATE TABLE [dbo].[TestTable] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (50) NOT NULL,
    [CreatedAt] DATETIME      DEFAULT (getdate()) NULL,
    [Status]    BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

