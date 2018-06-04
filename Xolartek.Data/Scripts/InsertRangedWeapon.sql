USE [XolartekDb]
GO

DECLARE @weaponId INT

EXECUTE [dbo].[InsertWeaponRange] 
'Hydra'
,'Assault Weapon: Hydraulic. A hybrid weapon that fires a tight cluster of pellets, with considerably more knockback than an assault rifle, but better range and more focused damage than a shotgun.'
,375
,40
,4
,'16,181.7'
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

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Helium Shotgun'
,'Shotgun: Neon. Fires piercing energy slugs that deal high damage at a moderate fire rate. Short range and limited magazine size. Deals energy damage, which is fairly effective against all types of elemental enemies.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'16,396'
-- CritChance
,'10%'
-- CritDamage
,'50%'
-- FireRate
,'1.3'
-- MagazineSize
,17
-- Range
,'2,560'
-- DurabilityPerUse
,'0.48'
-- ReloadTime
,'3.1'
-- AmmoCost
,2
-- Impact
,'924'
,'~/content/images/T-Icon-Weapons-SK-Neon-Glow-Shotgun-L.png'
,'Neon'
,'Shotgun'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+21%', @weaponId, 'Durability'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 6, 'Planks', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 24, 'Fine-grain Mineral Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 8, 'Malachite Ore', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 10, 'Batteries', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Dam Buster'
,'Explosive Weapon: Hydraulic. Fires a powerful rocket with a large concussive shockwave that knocks back enemies. Slow to reload.'
-- Durability
,15
-- Level
,25
-- Stars
,3
-- Damage
,'37,365.1'
-- CritChance
,'10%'
-- CritDamage
,'95%'
-- FireRate
,'0.75'
-- MagazineSize
,1
-- Range
,'768'
-- DurabilityPerUse
,'1.0'
-- ReloadTime
,'2.0'
-- AmmoCost
,1
-- Impact
,'11,550'
,'~/content/images/T-Icon-Weapons-SK-Hydraulic-Launcher-L.png'
,'Hydraulic'
,'Explosive Weapon'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+45%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to slowed and snared targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Damage dealt with this weapon snares the target by 30% for 6 seconds.'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 12, 'Sturdy Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 3, 'Malachite Ore', @weaponId
