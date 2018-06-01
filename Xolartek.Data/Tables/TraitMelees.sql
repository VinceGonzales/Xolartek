CREATE TABLE [dbo].[TraitMelees] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Impact]   NVARCHAR (MAX) NULL,
    [Melee_Id] INT            NULL,
    [Trait_Id] INT            NULL,
    CONSTRAINT [PK_dbo.TraitMelees] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.TraitMelees_dbo.Traits_Trait_Id] FOREIGN KEY ([Trait_Id]) REFERENCES [dbo].[Traits] ([Id]),
    CONSTRAINT [FK_dbo.TraitMelees_dbo.WeaponMelees_Melee_Id] FOREIGN KEY ([Melee_Id]) REFERENCES [dbo].[WeaponMelees] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Melee_Id]
    ON [dbo].[TraitMelees]([Melee_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trait_Id]
    ON [dbo].[TraitMelees]([Trait_Id] ASC);

