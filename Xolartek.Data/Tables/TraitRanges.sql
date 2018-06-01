CREATE TABLE [dbo].[TraitRanges] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Impact]   NVARCHAR (MAX) NULL,
    [Range_Id] INT            NULL,
    [Trait_Id] INT            NULL,
    CONSTRAINT [PK_dbo.TraitRanges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.TraitRanges_dbo.Traits_Trait_Id] FOREIGN KEY ([Trait_Id]) REFERENCES [dbo].[Traits] ([Id]),
    CONSTRAINT [FK_dbo.TraitRanges_dbo.WeaponRanges_Range_Id] FOREIGN KEY ([Range_Id]) REFERENCES [dbo].[WeaponRanges] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_Range_Id]
    ON [dbo].[TraitRanges]([Range_Id] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Trait_Id]
    ON [dbo].[TraitRanges]([Trait_Id] ASC);

