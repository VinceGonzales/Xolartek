CREATE TABLE [dbo].[MaterialTraps] (
    [Id]          INT IDENTITY (1, 1) NOT NULL,
    [Cost]        INT NOT NULL,
    [Material_Id] INT NULL,
    [Trap_Id]     INT NULL,
    CONSTRAINT [PK_dbo.MaterialTraps] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.MaterialTraps_dbo.Materials_Material_Id] FOREIGN KEY ([Material_Id]) REFERENCES [dbo].[Materials] ([Id]),
    CONSTRAINT [FK_dbo.MaterialTraps_dbo.WeaponTraps_Trap_Id] FOREIGN KEY ([Trap_Id]) REFERENCES [dbo].[WeaponTraps] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Material_Id]
    ON [dbo].[MaterialTraps]([Material_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trap_Id]
    ON [dbo].[MaterialTraps]([Trap_Id] ASC);

