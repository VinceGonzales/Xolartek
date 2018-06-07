DECLARE @weaponId INT

EXECUTE [dbo].[InsertWeaponMelee]
'DoomHammer'
,'Hardware: Heavy. A slow-swinging hammer with powerful knockback. Overhead Smash: Heavy attack that does increased damage and knockback.'
,375 -- Durability INT,
,25 -- WeaponLevel INT,
,3 -- Stars INT,
,'3,581.7' -- Damage NVARCHAR(100),
,'20%' -- CritChance NVARCHAR(100),
,'50%' -- CritDamage NVARCHAR(100),
,'0.85' -- FireRate NVARCHAR(100),
,'0.37' -- DurabilityPerUse NVARCHAR(100),
,'875.6' -- Impact NVARCHAR(100),
,'~/content/images/T-Icon-Weapons-SK-MilitaryWarHammer-L.png' -- PictureSource NVARCHAR(MAX),
,'Heavy' -- WeaponEdition NVARCHAR(100),
,'Hardware' -- WeaponType NVARCHAR(100),
,'Legendary' -- Rarity NVARCHAR(100)

SET @weaponId = (SELECT IDENT_CURRENT('WeaponMelees'))

EXECUTE [dbo].[InsertTraitMelee] '+10%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitMelee] '+14%', @weaponId, 'Durability'
EXECUTE [dbo].[InsertTraitMelee] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitMelee] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitMelee] '+22.5%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitMelee] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialMelee] 20, 'Planks', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 30, 'Sturdy Twin', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponMelee]
'Stormblade'
,'Sword: High Tech. Energized blade with a fast swing speed for great sustained damage. Deals energy damage that is fairly effective against elemental enemies. Cut and Thrust: A series of three heavy attacks that cut twice and thrust once while moving forward.'
,375 -- Durability INT,
,30 -- WeaponLevel INT,
,3 -- Stars INT,
,'4,324.8' -- Damage NVARCHAR(100),
,'15%' -- CritChance NVARCHAR(100),
,'50%' -- CritDamage NVARCHAR(100),
,'1' -- FireRate NVARCHAR(100),
,'0.19' -- DurabilityPerUse NVARCHAR(100),
,'196' -- Impact NVARCHAR(100),
,'~/content/images/T-Icon-Weapons-SK-Sword-Advanced-L.png' -- PictureSource NVARCHAR(MAX),
,'High Tech' -- WeaponEdition NVARCHAR(100),
,'Sword' -- WeaponType NVARCHAR(100),
,'Legendary' -- Rarity NVARCHAR(100)

SET @weaponId = (SELECT IDENT_CURRENT('WeaponMelees'))

EXECUTE [dbo].[InsertTraitMelee] '+15%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitMelee] '+1.6%', @weaponId, 'Life Leech'
EXECUTE [dbo].[InsertTraitMelee] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitMelee] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitMelee] '+22.5%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitMelee] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialMelee] 6, 'Rough Ore', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 24, 'Fine-grain Mineral Powder', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 8, 'Malachite Ore', @weaponId
EXECUTE [dbo].[InsertMaterialMelee] 10, 'Batteries', @weaponId
