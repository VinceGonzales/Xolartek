CREATE TABLE [dbo].[Materials] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    [PictureId]   INT            NULL,
    CONSTRAINT [PK_dbo.Materials] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.Materials_dbo.Pictures_PictureId] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Pictures] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PictureId]
    ON [dbo].[Materials]([PictureId] ASC);

