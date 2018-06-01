CREATE TABLE [dbo].[MaterialMelees] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [Cost]        INT NOT NULL,
    [Material_Id] INT NULL,
    [Melee_Id]    INT NULL,
    CONSTRAINT [PK_dbo.MaterialMelees] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.MaterialMelees_dbo.Materials_Material_Id] FOREIGN KEY ([Material_Id]) REFERENCES [dbo].[Materials] ([Id]),
    CONSTRAINT [FK_dbo.MaterialMelees_dbo.WeaponMelees_Melee_Id] FOREIGN KEY ([Melee_Id]) REFERENCES [dbo].[WeaponMelees] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Material_Id]
    ON [dbo].[MaterialMelees]([Material_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Melee_Id]
    ON [dbo].[MaterialMelees]([Melee_Id] ASC);

