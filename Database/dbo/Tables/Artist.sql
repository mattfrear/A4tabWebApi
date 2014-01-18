CREATE TABLE [dbo].[Artist] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED ([Id] ASC)
);

