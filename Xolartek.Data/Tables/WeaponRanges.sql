CREATE TABLE [dbo].[WeaponRanges] (
    [Id]               INT            IDENTITY (1, 1) NOT NULL,
    [Name]             NVARCHAR (100) NOT NULL,
    [Description]      NVARCHAR (MAX) NULL,
    [Durability]       INT            NOT NULL,
    [Level]            INT            NOT NULL,
    [Stars]            INT            NOT NULL,
    [Damage]           NVARCHAR (100) NULL,
    [CritChance]       NVARCHAR (100) NULL,
    [CritDamage]       NVARCHAR (100) NULL,
    [FireRate]         NVARCHAR (100) NULL,
    [MagazineSize]     INT            NOT NULL,
    [Range]            NVARCHAR (100) NULL,
    [DurabilityPerUse] NVARCHAR (100) NULL,
    [ReloadTime]       NVARCHAR (100) NULL,
    [AmmoCost]         INT            NOT NULL,
    [Impact]           NVARCHAR (100) NULL,
    [PictureId]        INT            NULL,
    [WeaponEditionId]  INT            NULL,
    [WeaponTypeId]     INT            NULL,
    [RarityId]         INT            NOT NULL,
    CONSTRAINT [PK_dbo.WeaponRanges] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.WeaponRanges_dbo.Pictures_PictureId] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Pictures] ([Id]),
    CONSTRAINT [FK_dbo.WeaponRanges_dbo.Rarities_RarityId] FOREIGN KEY ([RarityId]) REFERENCES [dbo].[Rarities] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.WeaponRanges_dbo.WeaponEditions_WeaponEditionId] FOREIGN KEY ([WeaponEditionId]) REFERENCES [dbo].[WeaponEditions] ([Id]),
    CONSTRAINT [FK_dbo.WeaponRanges_dbo.WeaponTypes_WeaponTypeId] FOREIGN KEY ([WeaponTypeId]) REFERENCES [dbo].[WeaponTypes] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PictureId]
    ON [dbo].[WeaponRanges]([PictureId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_WeaponEditionId]
    ON [dbo].[WeaponRanges]([WeaponEditionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_WeaponTypeId]
    ON [dbo].[WeaponRanges]([WeaponTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RarityId]
    ON [dbo].[WeaponRanges]([RarityId] ASC);

