CREATE TABLE [dbo].[TraitTraps] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Impact]   NVARCHAR (MAX) NULL,
    [Trait_Id] INT            NULL,
    [Trap_Id]  INT            NULL,
    CONSTRAINT [PK_dbo.TraitTraps] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.TraitTraps_dbo.Traits_Trait_Id] FOREIGN KEY ([Trait_Id]) REFERENCES [dbo].[Traits] ([Id]),
    CONSTRAINT [FK_dbo.TraitTraps_dbo.WeaponTraps_Trap_Id] FOREIGN KEY ([Trap_Id]) REFERENCES [dbo].[WeaponTraps] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Trait_Id]
    ON [dbo].[TraitTraps]([Trait_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trap_Id]
    ON [dbo].[TraitTraps]([Trap_Id] ASC);

