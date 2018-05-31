USE [XolartekDb]
GO
/*
DECLARE @Name nvarchar(100)
DECLARE @Description nvarchar(max)
DECLARE @Durability int
DECLARE @WeaponLevel int
DECLARE @Stars int
DECLARE @Damage nvarchar(100)
DECLARE @CritChance nvarchar(100)
DECLARE @CritDamage nvarchar(100)
DECLARE @FireRate nvarchar(100)
DECLARE @MagazineSize int
DECLARE @WeaponRange nvarchar(100)
DECLARE @DurabilityPerUse nvarchar(100)
DECLARE @ReloadTime nvarchar(100)
DECLARE @AmmoCost int
DECLARE @Impact nvarchar(100)
DECLARE @PictureSource nvarchar(max)
DECLARE @WeaponEdition nvarchar(100)
DECLARE @WeaponType nvarchar(100)
DECLARE @Rarity nvarchar(100)
*/
EXECUTE [dbo].[InsertWeaponRange] 
'Hydra'
,'Assault Weapon: Hydraulic. A hybrid weapon that fires a tight cluster of pellets, with considerably more knockback than an assault rifle, but better range and more focused damage than a shotgun.'
,375
,40
,4
,'11,043.7'
,'27.5%'
,'117.5%'
,'2.5'
,10
,'3,584'
,'0.22'
,'2.0'
,1
,'1,444.3'
,'~/content/images/T-Icon-Weapons-SK-Hydra-L.png'
,'Hydraulic'
,'Assault Rifle'
,'Legendary'
GO