DECLARE @weaponId INT

EXECUTE [dbo].[InsertWeaponTrap]
'Wall Dynamo'
,'Does electric damage to all enemies in range when trap is triggered.' -- Description - nvarchar(max)
,36   -- Durability - int
,35   -- WeaponLevel - int
,4   -- Stars - int
,'1,050.7' -- Damage - nvarchar(100)
,'22.5%' -- CritChance - nvarchar(100)
,'2,285.3' -- CritDamage - nvarchar(100)
,'10.9' -- FireRate - nvarchar(100)
,'1' -- WeaponRange - nvarchar(100)
,'1' -- DurabilityPerUse - nvarchar(100)
,'9.9' -- ReloadTime - nvarchar(100)
,'4,738.2' -- Impact - nvarchar(100)
,'~/content/images/T-Icon-Weapons-Electric-Trap-Wall-L.png'   -- PictureSource - nvarchar(100)
,'Legendary'   -- Rarity - nvarchar(100)

SET @weaponId = (SELECT IDENT_CURRENT('WeaponTraps'))

EXECUTE [dbo].[InsertTraitTrap] '+10%', @weaponId, 'Nature Damage'
EXECUTE [dbo].[InsertTraitTrap] '+10%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitTrap] '+21%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitTrap] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitTrap] '+68%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitTrap] '+11%', @weaponId, 'Increased Building Health'

EXECUTE [dbo].[InsertMaterialTrap] 11, 'Nuts n Bolts', @weaponId
EXECUTE [dbo].[InsertMaterialTrap] 5, 'Rough Ore', @weaponId
EXECUTE [dbo].[InsertMaterialTrap] 2, 'Char-black Mineral Powder', @weaponId
