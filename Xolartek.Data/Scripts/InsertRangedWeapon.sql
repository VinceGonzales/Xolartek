USE [XolartekDb]
GO

DECLARE @weaponId INT

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

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+68%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Headshot eliminations cause an explosion, damaging enemies within 0.5 tiles'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sleek Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Obsidian Ore', @weaponId
