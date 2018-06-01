CREATE TABLE [dbo].[Traits] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_dbo.Traits] PRIMARY KEY CLUSTERED ([Id] ASC)
);

