CREATE TABLE [dbo].[WeaponEditions] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.WeaponEditions] PRIMARY KEY CLUSTERED ([Id] ASC)
);

