CREATE PROCEDURE InsertWeaponRange
@Name NVARCHAR(100),
@Description NVARCHAR(MAX),
@Durability INT,
@WeaponLevel INT,
@Stars INT,
@Damage NVARCHAR(100),
@CritChance NVARCHAR(100),
@CritDamage NVARCHAR(100),
@FireRate NVARCHAR(100),
@MagazineSize INT,
@WeaponRange NVARCHAR(100),
@DurabilityPerUse NVARCHAR(100),
@ReloadTime NVARCHAR(100),
@AmmoCost INT,
@Impact NVARCHAR(100),
@PictureSource NVARCHAR(MAX),
@WeaponEdition NVARCHAR(100),
@WeaponType NVARCHAR(100),
@Rarity NVARCHAR(100)
AS
DECLARE @pictId INT, @weapEditionId INT, @weapTypeId INT, @rareId INT

INSERT INTO [dbo].[Pictures] ([Source],[CSSClass],[Alternate]) VALUES (@PictureSource,'img-fluid',@Name)

SET @pictId = (SELECT IDENT_CURRENT('Pictures'))

IF EXISTS( SELECT * FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition )
	BEGIN
		SET @weapEditionId = (SELECT [Id] FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[WeaponEditions] ([Description]) VALUES (@WeaponEdition)
		SET @weapEditionId = (SELECT IDENT_CURRENT('WeaponEditions'))
	END

IF EXISTS( SELECT * FROM [dbo].[WeaponTypes] WHERE [Description] LIKE @WeaponType )
	BEGIN
		SET @weapTypeId = (SELECT [Id] FROM [dbo].[WeaponTypes] WHERE [Description] LIKE @WeaponType)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[WeaponTypes] ([Description]) VALUES (@WeaponType)
		SET @weapTypeId = (SELECT IDENT_CURRENT('WeaponTypes'))
	END

IF EXISTS( SELECT * FROM [dbo].[Rarities] WHERE [Description] LIKE @Rarity )
	BEGIN
		SET @rareId = (SELECT [Id] FROM [dbo].[Rarities] WHERE [Description] LIKE @Rarity)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Rarities] ([Description]) VALUES (@Rarity)
		SET @rareId = (SELECT IDENT_CURRENT('Rarities'))
	END

INSERT INTO [dbo].[WeaponRanges]
([Name],[Description],[Durability],[Level],[Stars],[Damage],[CritChance],[CritDamage],[FireRate],[MagazineSize],[Range],[DurabilityPerUse],[ReloadTime],[AmmoCost],[Impact],[PictureId],[WeaponEditionId],[WeaponTypeId],[RarityId])
VALUES
(@Name,@Description,@Durability,@WeaponLevel,@Stars,@Damage,@CritChance,@CritDamage,@FireRate,@MagazineSize,@WeaponRange,@DurabilityPerUse,@ReloadTime,@AmmoCost,@Impact,@pictId,@weapEditionId,@weapTypeId,@rareId)
