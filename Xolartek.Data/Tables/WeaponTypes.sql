CREATE TABLE [dbo].[WeaponTypes] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.WeaponTypes] PRIMARY KEY CLUSTERED ([Id] ASC)
);

