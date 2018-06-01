CREATE TABLE [dbo].[Rarities] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_dbo.Rarities] PRIMARY KEY CLUSTERED ([Id] ASC)
);

