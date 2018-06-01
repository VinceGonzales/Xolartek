CREATE TABLE [dbo].[MaterialRanges] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [Cost]        INT NOT NULL,
    [Material_Id] INT NULL,
    [Range_Id]    INT NULL,
    CONSTRAINT [PK_dbo.MaterialRanges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.MaterialRanges_dbo.Materials_Material_Id] FOREIGN KEY ([Material_Id]) REFERENCES [dbo].[Materials] ([Id]),
    CONSTRAINT [FK_dbo.MaterialRanges_dbo.WeaponRanges_Range_Id] FOREIGN KEY ([Range_Id]) REFERENCES [dbo].[WeaponRanges] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Material_Id]
    ON [dbo].[MaterialRanges]([Material_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Range_Id]
    ON [dbo].[MaterialRanges]([Range_Id] ASC);

