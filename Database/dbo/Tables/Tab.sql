CREATE TABLE [dbo].[Tab] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Author]     NVARCHAR (255) NOT NULL,
    [ArtistId]   INT            NOT NULL,
    [Name]       NVARCHAR (255) NOT NULL,
    [CreatedOn]  DATETIME       NOT NULL,
    [ModifiedOn] DATETIME       NOT NULL,
    CONSTRAINT [PK_Tab] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Tab_Artist] FOREIGN KEY ([ArtistId]) REFERENCES [dbo].[Artist] ([Id])
);

