﻿CREATE TABLE [dbo].[WeaponTraps] (
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
    [Range]            NVARCHAR (100) NULL,
    [DurabilityPerUse] NVARCHAR (100) NULL,
    [ReloadTime]       NVARCHAR (100) NULL,
    [Impact]           NVARCHAR (100) NULL,
    [PictureId]        INT            NULL,
    [RarityId]         INT            NOT NULL,
    CONSTRAINT [PK_dbo.WeaponTraps] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_dbo.WeaponTraps_dbo.Pictures_PictureId] FOREIGN KEY ([PictureId]) REFERENCES [dbo].[Pictures] ([Id]),
    CONSTRAINT [FK_dbo.WeaponTraps_dbo.Rarities_RarityId] FOREIGN KEY ([RarityId]) REFERENCES [dbo].[Rarities] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_PictureId]
    ON [dbo].[WeaponTraps]([PictureId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RarityId]
    ON [dbo].[WeaponTraps]([RarityId] ASC);

