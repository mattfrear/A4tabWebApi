CREATE TABLE [dbo].[BookTab] (
    [Id]     INT IDENTITY (1, 1) NOT NULL,
    [BookId] INT NOT NULL,
    [TabId]  INT NOT NULL,
    CONSTRAINT [PK_BookTab_1] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_BookTab_Book] FOREIGN KEY ([BookId]) REFERENCES [dbo].[Book] ([Id]),
    CONSTRAINT [FK_BookTab_Tab] FOREIGN KEY ([TabId]) REFERENCES [dbo].[Tab] ([Id])
);

