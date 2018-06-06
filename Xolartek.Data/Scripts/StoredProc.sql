USE [XolartekDb]
GO
-------------------------------------------------------------- SP InsertWeaponRange
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

IF @weapEditionId IS NOT NULL OR @weapEditionId > 0
BEGIN
	IF EXISTS( SELECT * FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition )
		BEGIN
			SET @weapEditionId = (SELECT [Id] FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition)
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[WeaponEditions] ([Description]) VALUES (@WeaponEdition)
			SET @weapEditionId = (SELECT IDENT_CURRENT('WeaponEditions'))
		END
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
GO
-------------------------------------------------------------- SP InsertTraitRange
CREATE PROCEDURE InsertTraitRange
@Impact NVARCHAR(100),
@WeaponId INT,
@Trait NVARCHAR(100)
AS
DECLARE @TraitRangeId INT

IF EXISTS( SELECT * FROM [dbo].[Traits] WHERE [Description] LIKE @Trait )
	BEGIN
		SET @TraitRangeId = (SELECT [Id] FROM [dbo].[Traits] WHERE [Description] LIKE @Trait)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Traits] ([Description]) VALUES (@Trait)
		SET @TraitRangeId = (SELECT IDENT_CURRENT('Traits'))
	END

INSERT INTO [dbo].[TraitRanges] ([Impact],[Range_Id],[Trait_Id]) VALUES (@Impact,@WeaponId,@TraitRangeId)
GO
-------------------------------------------------------------- SP InsertMaterialRange
CREATE PROCEDURE InsertMaterialRange
@Cost INT,
@Material NVARCHAR(100),
@WeaponId INT
AS
DECLARE @MaterialId INT

IF EXISTS( SELECT * FROM [dbo].[Materials] WHERE [Description] LIKE @Material )
	BEGIN
		SET @MaterialId = (SELECT [Id] FROM [dbo].[Materials] WHERE [Description] LIKE @Material)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Materials] ([Description]) VALUES (@Material)
		SET @MaterialId = (SELECT IDENT_CURRENT('Materials'))
	END

INSERT INTO [dbo].[MaterialRanges] ([Cost],[Material_Id],[Range_Id]) VALUES (@Cost,@MaterialId,@WeaponId)
GO
-------------------------------------------------------------- SP InsertWeaponMelee
CREATE PROCEDURE InsertWeaponMelee
@Name NVARCHAR(100),
@Description NVARCHAR(MAX),
@Durability INT,
@WeaponLevel INT,
@Stars INT,
@Damage NVARCHAR(100),
@CritChance NVARCHAR(100),
@CritDamage NVARCHAR(100),
@FireRate NVARCHAR(100),
@DurabilityPerUse NVARCHAR(100),
@Impact NVARCHAR(100),
@PictureSource NVARCHAR(MAX),
@WeaponEdition NVARCHAR(100),
@WeaponType NVARCHAR(100),
@Rarity NVARCHAR(100)
AS
DECLARE @pictId INT, @weapEditionId INT, @weapTypeId INT, @rareId INT

INSERT INTO [dbo].[Pictures] ([Source],[CSSClass],[Alternate]) VALUES (@PictureSource,'img-fluid',@Name)

SET @pictId = (SELECT IDENT_CURRENT('Pictures'))

IF @weapEditionId IS NOT NULL OR @weapEditionId > 0
BEGIN
	IF EXISTS( SELECT * FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition )
		BEGIN
			SET @weapEditionId = (SELECT [Id] FROM [dbo].[WeaponEditions] WHERE [Description] LIKE @WeaponEdition)
		END
	ELSE
		BEGIN
			INSERT INTO [dbo].[WeaponEditions] ([Description]) VALUES (@WeaponEdition)
			SET @weapEditionId = (SELECT IDENT_CURRENT('WeaponEditions'))
		END
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

INSERT INTO [dbo].[WeaponMelees]
([Name],[Description],[Durability],[Level],[Stars],[Damage],[CritChance],[CritDamage],[FireRate],[DurabilityPerUse],[Impact],[PictureId],[WeaponEditionId],[WeaponTypeId],[RarityId])
VALUES
(@Name,@Description,@Durability,@WeaponLevel,@Stars,@Damage,@CritChance,@CritDamage,@FireRate,@DurabilityPerUse,@Impact,@pictId,@weapEditionId,@weapTypeId,@rareId)
GO
-------------------------------------------------------------- SP InsertTraitMelee
CREATE PROCEDURE InsertTraitMelee
@Impact NVARCHAR(100),
@WeaponId INT,
@Trait NVARCHAR(100)
AS
DECLARE @TraitMeleeId INT

IF EXISTS( SELECT * FROM [dbo].[Traits] WHERE [Description] LIKE @Trait )
	BEGIN
		SET @TraitMeleeId = (SELECT [Id] FROM [dbo].[Traits] WHERE [Description] LIKE @Trait)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Traits] ([Description]) VALUES (@Trait)
		SET @TraitMeleeId = (SELECT IDENT_CURRENT('Traits'))
	END

INSERT INTO [dbo].[TraitMelees] ([Impact],[Melee_Id],[Trait_Id]) VALUES (@Impact,@WeaponId,@TraitMeleeId)
GO
-------------------------------------------------------------- SP InsertMaterialMelee
CREATE PROCEDURE InsertMaterialMelee
@Cost INT,
@Material NVARCHAR(100),
@WeaponId INT
AS
DECLARE @MaterialId INT

IF EXISTS( SELECT * FROM [dbo].[Materials] WHERE [Description] LIKE @Material )
	BEGIN
		SET @MaterialId = (SELECT [Id] FROM [dbo].[Materials] WHERE [Description] LIKE @Material)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Materials] ([Description]) VALUES (@Material)
		SET @MaterialId = (SELECT IDENT_CURRENT('Materials'))
	END

INSERT INTO [dbo].[MaterialMelees] ([Cost],[Material_Id],[Melee_Id]) VALUES (@Cost,@MaterialId,@WeaponId)
GO
-------------------------------------------------------------- SP InsertWeaponTrap
CREATE PROCEDURE InsertWeaponTrap
@Name NVARCHAR(100),
@Description NVARCHAR(MAX),
@Durability INT,
@WeaponLevel INT,
@Stars INT,
@Damage NVARCHAR(100),
@CritChance NVARCHAR(100),
@CritDamage NVARCHAR(100),
@FireRate NVARCHAR(100),
@WeaponRange NVARCHAR(100),
@DurabilityPerUse NVARCHAR(100),
@ReloadTime NVARCHAR(100),
@Impact NVARCHAR(100),
@PictureSource NVARCHAR(MAX),
@Rarity NVARCHAR(100)
AS
DECLARE @pictId INT, @weapEditionId INT, @weapTypeId INT, @rareId INT

INSERT INTO [dbo].[Pictures] ([Source],[CSSClass],[Alternate]) VALUES (@PictureSource,'img-fluid',@Name)

SET @pictId = (SELECT IDENT_CURRENT('Pictures'))

IF EXISTS( SELECT * FROM [dbo].[Rarities] WHERE [Description] LIKE @Rarity )
	BEGIN
		SET @rareId = (SELECT [Id] FROM [dbo].[Rarities] WHERE [Description] LIKE @Rarity)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Rarities] ([Description]) VALUES (@Rarity)
		SET @rareId = (SELECT IDENT_CURRENT('Rarities'))
	END

INSERT INTO [dbo].[WeaponTraps]
([Name],[Description],[Durability],[Level],[Stars],[Damage],[CritChance],[CritDamage],[FireRate],[Range],[DurabilityPerUse],[ReloadTime],[Impact],[PictureId],[RarityId])
VALUES
(@Name,@Description,@Durability,@WeaponLevel,@Stars,@Damage,@CritChance,@CritDamage,@FireRate,@WeaponRange,@DurabilityPerUse,@ReloadTime,@Impact,@pictId,@rareId)
GO
-------------------------------------------------------------- SP InsertTraitTrap
CREATE PROCEDURE InsertTraitTrap
@Impact NVARCHAR(100),
@WeaponId INT,
@Trait NVARCHAR(100)
AS
DECLARE @TraitTrapId INT

IF EXISTS( SELECT * FROM [dbo].[Traits] WHERE [Description] LIKE @Trait )
	BEGIN
		SET @TraitTrapId = (SELECT [Id] FROM [dbo].[Traits] WHERE [Description] LIKE @Trait)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Traits] ([Description]) VALUES (@Trait)
		SET @TraitTrapId = (SELECT IDENT_CURRENT('Traits'))
	END

INSERT INTO [dbo].[TraitTraps] ([Impact],[Trap_Id],[Trait_Id]) VALUES (@Impact,@WeaponId,@TraitTrapId)
GO
-------------------------------------------------------------- SP InsertMaterialTrap
CREATE PROCEDURE InsertMaterialTrap
@Cost INT,
@Material NVARCHAR(100),
@WeaponId INT
AS
DECLARE @MaterialId INT

IF EXISTS( SELECT * FROM [dbo].[Materials] WHERE [Description] LIKE @Material )
	BEGIN
		SET @MaterialId = (SELECT [Id] FROM [dbo].[Materials] WHERE [Description] LIKE @Material)
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Materials] ([Description]) VALUES (@Material)
		SET @MaterialId = (SELECT IDENT_CURRENT('Materials'))
	END

INSERT INTO [dbo].[MaterialTraps] ([Cost],[Material_Id],[Trap_Id]) VALUES (@Cost,@MaterialId,@WeaponId)
GO
