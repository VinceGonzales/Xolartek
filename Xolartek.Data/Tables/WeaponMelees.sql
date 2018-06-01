CREATE TABLE [dbo].[WeaponMelees] (
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
    [DurabilityPerUse] NVARCHAR (100) NULL,
    [Impact]           NVARCHAR (100) NULL,
    [PictureId]        INT            NULL,
    [WeaponEditionId]  INT            NULL,
    [WeaponTypeId]     INT            NULL,
    [RarityId]         INT            NOT NULL,
    CONSTRAINT [PK_dbo.WeaponMelees] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.WeaponMelees_dbo.Pictures_PictureId] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Pictures] ([Id]),
    CONSTRAINT [FK_dbo.WeaponMelees_dbo.Rarities_RarityId] FOREIGN KEY ([RarityId]) REFERENCES [dbo].[Rarities] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.WeaponMelees_dbo.WeaponEditions_WeaponEditionId] FOREIGN KEY ([WeaponEditionId]) REFERENCES [dbo].[WeaponEditions] ([Id]),
    CONSTRAINT [FK_dbo.WeaponMelees_dbo.WeaponTypes_WeaponTypeId] FOREIGN KEY ([WeaponTypeId]) REFERENCES [dbo].[WeaponTypes] ([Id])
);


GO
CREATE NONCLUSTERED INDEX [IX_PictureId]
    ON [dbo].[WeaponMelees]([PictureId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_WeaponEditionId]
    ON [dbo].[WeaponMelees]([WeaponEditionId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_WeaponTypeId]
    ON [dbo].[WeaponMelees]([WeaponTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RarityId]
    ON [dbo].[WeaponMelees]([RarityId] ASC);

