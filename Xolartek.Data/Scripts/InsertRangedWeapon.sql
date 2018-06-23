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

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Hacksaw'
,'Assault Weapon: Light Machine Gun - Military. A lighter LMG variant with a moderate rate of fire, mild recoil, a long reload time, and overall excellent ammo efficiency. Best used when stationary, aiming down the sights, and firing in short bursts.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'1,762.1'
-- CritChance
,'10%'
-- CritDamage
,'50%'
-- FireRate
,'13.11'
-- MagazineSize
,138
-- Range
,'4,096'
-- DurabilityPerUse
,'0.05'
-- ReloadTime
,'3.4'
-- AmmoCost
,1
-- Impact
,'209'
,'~/content/images/T-Icon-Weapons-SK-M249-L.png'
,'Military'
,'Assault Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+21%', @weaponId, 'Fire Rate'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to slowed and snared targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Damage dealt with this weapon snares the target by 30% for 6 seconds.'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Nailer'
,'Assault Weapon: Hydraulic. A slow firing high impact automatic rifle with a large magazine.'
-- Durability
,375
-- Level
,40
-- Stars
,4
-- Damage
,'3,436.8'
-- CritChance
,'27.5%'
-- CritDamage
,'50%'
-- FireRate
,'5.5'
-- MagazineSize
,55
-- Range
,'3,840'
-- DurabilityPerUse
,'0.09'
-- ReloadTime
,'3.0'
-- AmmoCost
,1
-- Impact
,'778.8'
,'~/content/images/T-Icon-Weapons-SK-Hydraulic-Drum-Assault-L.png'
,'Hydraulic'
,'Assault Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+22.5%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sleek Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Obsidian Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Neon Sniper Rifle'
,'Sniper Rifle: Neon. With a scope that can detect enemies through walls, this weapon can pierce enemies, walls, or any other objects in your way. Deals energy damage, which is fairly effective against all types of elemental enemies.'
-- Durability
,300
-- Level
,35
-- Stars
,4
-- Damage
,'15,596.5'
-- CritChance
,'15%'
-- CritDamage
,'142.5%'
-- FireRate
,'0.72'
-- MagazineSize
,22
-- Range
,'25,000'
-- DurabilityPerUse
,'0.63'
-- ReloadTime
,'3.2'
-- AmmoCost
,3
-- Impact
,'1,166.4'
,'~/content/images/T-Icon-Weapons-SK-NeonGlow-Sniper-L.png'
,'Neon'
,'Sniper Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitRange] '+68%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+27%', @weaponId, 'Headshot Damage'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Getting 5 headshots in a row increases ranged weapon damage +30% for 10 seconds.'

EXECUTE [dbo].[InsertMaterialRange] 6, 'Planks', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 24, 'Fine-grain Mineral Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 8, 'Malachite Ore', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 10, 'Batteries', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Heartbreaker'
,'Sniper Rifle: Crossbow. Fires an arrow that drops over time and pierces through enemies.'
-- Durability
,300
-- Level
,35
-- Stars
,4
-- Damage
,'22,378.6'
-- CritChance
,'27.5%'
-- CritDamage
,'165%'
-- FireRate
,'0.55'
-- MagazineSize
,6
-- Range
,'25,000'
-- DurabilityPerUse
,'0.8'
-- ReloadTime
,'3.0'
-- AmmoCost
,1
-- Impact
,'3,110.4'
,'~/content/images/T-Icon-Weapons-SK-Crossbow-Valentines-L.png'
,'Crossbow'
,'Sniper Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+32%', @weaponId, 'Physical Damage'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+90%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, '+30% Weapon Damage when aiming down sights'

EXECUTE [dbo].[InsertMaterialRange] 13, 'Quartz Crystal', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sleek Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Shadowshard Crystal', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Whisper .45'
,'Pistol: Semi-Auto Silenced - Military. A suppressed handgun that greatly reduces the distance enemies hear and react to the shots. Harder hitting and softer shooting than the standard semi-auto pistol, but at the cost of slightly slower aim recovery and lower capacity.'
-- Durability
,375
-- Level
,30
-- Stars
,3
-- Damage
,'7,730.3'
-- CritChance
,'20%'
-- CritDamage
,'75%'
-- FireRate
,'5.5'
-- MagazineSize
,18
-- Range
,'3,584'
-- DurabilityPerUse
,'0.12'
-- ReloadTime
,'2.2'
-- AmmoCost
,1
-- Impact
,'793.8'
,'~/content/images/T-Icon-Weapons-SK-45-Silenced-L.png'
,'Military'
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Nature Damage'
EXECUTE [dbo].[InsertTraitRange] '+27%', @weaponId, 'Headshot Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Falcon'
,'Pistol: Semi-Automatic Handcannon. Fires large rounds that deal high damage and knock back targets. Good range, accuracy, rate of fire, and magazine size.'
-- Durability
,375
-- Level
,30
-- Stars
,3
-- Damage
,'7,538.2'
-- CritChance
,'15%'
-- CritDamage
,'75%'
-- FireRate
,'2.5'
-- MagazineSize
,10
-- Range
,'3,840'
-- DurabilityPerUse
,'0.21'
-- ReloadTime
,'1.8'
-- AmmoCost
,1
-- Impact
,'1,210.3'
,'~/content/images/T-Icon-Weapons-SK-Pistol-02-L.png'
,''
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+25%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Water Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Bald Eagle'
,'Pistol: Semi-Auto Handcannon - Military. Fires large rounds with a slow rate of fire that deal high damage and knock back targets. Good range, accuracy, and magazine size.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'13,722.8'
-- CritChance
,'15%'
-- CritDamage
,'165%'
-- FireRate
,'0.8'
-- MagazineSize
,9
-- Range
,'4,096'
-- DurabilityPerUse
,'0.52'
-- ReloadTime
,'2.2'
-- AmmoCost
,1
-- Impact
,'2,725.8'
,'~/content/images/T-Icon-Weapons-SK-Pistol-02BR-L.png'
,'Military'
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+90%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+25%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Siegebreaker'
,'Assault Weapon: Fully Automatic. Flexible assault rifle capable of handling all types of combat scenarios. High rate of fire with solid accuracy when aiming down sights and firing in controlled bursts.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'1,445.8'
-- CritChance
,'10%'
-- CritDamage
,'117.5%'
-- FireRate
,'13.68'
-- MagazineSize
,30
-- Range
,'4,096'
-- DurabilityPerUse
,'0.05'
-- ReloadTime
,'2.3'
-- AmmoCost
,1
-- Impact
,'180.4'
,'~/content/images/T-Icon-Weapons-SK-SCAR-L.png'
,''
,'Assault Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+14%', @weaponId, 'Fire Rate'
EXECUTE [dbo].[InsertTraitRange] '+28%', @weaponId, 'Durability'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Water Damage'
EXECUTE [dbo].[InsertTraitRange] '+68%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+24%', @weaponId, 'Damage to Mist Monsters and Bosses'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Getting 5 headshots in a row increases ranged weapon damage +30% for 10 seconds.'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Terminator'
,'Assault Weapon: Light Machine Gun. A heavy weapon with high damage, an extreme rate of fire, and a huge magazine size. Very inaccurate unless aiming down sights from a fixed position, and firing in short bursts.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'1,745.6'
-- CritChance
,'10%'
-- CritDamage
,'140%'
-- FireRate
,'12.0'
-- MagazineSize
,100
-- Range
,'4,096'
-- DurabilityPerUse
,'0.04'
-- ReloadTime
,'3.2'
-- AmmoCost
,1
-- Impact
,'209.0'
,'~/content/images/T-Icon-Weapons-SK-SAW-01-L.png'
,'Light Machine Gun'
,'Assault Rifle'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+25%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Nature Damage'
EXECUTE [dbo].[InsertTraitRange] '+90%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+24%', @weaponId, 'Damage to Mist Monsters and Bosses'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Headshot eliminations cause an explosion, damaging enemies within 0.5 tiles for 30% weapon damage.'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Monsoon'
,'Pistol: Special. Absurdly fast-firing pistol with a large magazine that dishes out ridiculous damage at short to mid-range. Offset by poor accuracy, extreme ammo consumption, and a brief spin-up time before firing.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'1,310.3'
-- CritChance
,'31.5%'
-- CritDamage
,'50%'
-- FireRate
,'18.0'
-- MagazineSize
,90
-- Range
,'3,840'
-- DurabilityPerUse
,'0.04'
-- ReloadTime
,'3.0'
-- AmmoCost
,1
-- Impact
,'147.4'
,'~/content/images/T-Icon-Weapons-SK-Monsoon-L.png'
,''
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+27%', @weaponId, 'Headshot Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Dragon&apos;s Breath'
,'Pistol: Special. Part double-barrel shotgun, part pistol, and part DRAGON. Fires a wide blast of pellets at close range for extreme damage and knockback. Slow to reload.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'19,735.2'
-- CritChance
,'10%'
-- CritDamage
,'140%'
-- FireRate
,'1.0'
-- MagazineSize
,2
-- Range
,'2,048'
-- DurabilityPerUse
,'0.73'
-- ReloadTime
,'1.6'
-- AmmoCost
,1
-- Impact
,'4,139.5'
,'~/content/images/T-Icon-Weapons-SK-DragonGun-L.png'
,''
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+90%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to stunned, staggered, and knocked down targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Increases impact by 40%. Stun duration increased by 1s.'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Dragonfire'
,'Shotgun: Automatic. Slower firing automatic shotgun that deals fire damage in a wide but short range. Fire damage is effective against nature enemies, but weak against water enemies.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'7,547.3'
-- CritChance
,'27.5%'
-- CritDamage
,'95%'
-- FireRate
,'2.0'
-- MagazineSize
,8
-- Range
,'768'
-- DurabilityPerUse
,'0.28'
-- ReloadTime
,'2.7'
-- AmmoCost
,1
-- Impact
,'693.0'
,'~/content/images/T-Icon-Weapons-SK-Dragon-Drum-Assault-L.png'
,''
,'Shotgun'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Fire Damage'
EXECUTE [dbo].[InsertTraitRange] '+45%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+15%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 20, 'Planks', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Fine-grain Mineral Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Room Sweeper'
,'Shotgun: Automatic. Fires a wide spread of pellets at an extreme rate of fire. Can decimate crowds or annihilate tough enemies, at a significant ammo cost.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'4,347.3'
-- CritChance
,'22.5%'
-- CritDamage
,'50%'
-- FireRate
,'6.0'
-- MagazineSize
,28
-- Range
,'2,048'
-- DurabilityPerUse
,'0.11'
-- ReloadTime
,'3.0'
-- AmmoCost
,1
-- Impact
,'277.2'
,'~/content/images/T-Icon-Weapons-SK-Shotgun-02-Auto-L.png'
,''
,'Shotgun'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+38%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Water Damage'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Critical Rating'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 20, 'Planks', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 30, 'Fine-grain Mineral Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 11, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Vacuum Tube Launcher'
,'Explosive Weapon: Fires a burst of 3 balls of lightning in a flat trajectory that damages and stuns enemies in a moderate radius. Deals nature damage. Does not consume ammo, but has very low durability.'
-- Durability
,45
-- Level
,25
-- Stars
,3
-- Damage
,'9,118.4'
-- CritChance
,'10%'
-- CritDamage
,'117.5%'
-- FireRate
,'2.33'
-- MagazineSize
,9
-- Range
,'256'
-- DurabilityPerUse
,'1.0'
-- ReloadTime
,'2.0'
-- AmmoCost
,1
-- Impact
,'3,927.0'
,'~/content/images/T-Icon-Weapons-SK-VT-Launcher-L.png'
,'Vacuum'
,'Explosive Weapon'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Nature Damage'
EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+50%', @weaponId, 'Reload Speed'
EXECUTE [dbo].[InsertTraitRange] '+68%', @weaponId, 'Critical Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to afflicted targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Causes Affliction damage for 6 seconds'

EXECUTE [dbo].[InsertMaterialRange] 15, 'Blast Powder', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 12, 'Sturdy Mechanical Parts', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 3, 'Malachite Ore', @weaponId

----------------------

EXECUTE [dbo].[InsertWeaponRange] 
'Krypton Pistol'
,'Pistol: Neon. Shoots energized rounds at a rapid rate for high sustained damage. Deals energy damage, which is fairly effective against all types of elemental enemies.'
-- Durability
,375
-- Level
,25
-- Stars
,3
-- Damage
,'3,803.6'
-- CritChance
,'15%'
-- CritDamage
,'50%'
-- FireRate
,'5.0'
-- MagazineSize
,12
-- Range
,'3,584'
-- DurabilityPerUse
,'0.12'
-- ReloadTime
,'1.6'
-- AmmoCost
,1
-- Impact
,'288.2'
,'~/content/images/T-Icon-Weapons-SK-Neon-Glow-Pistol-L.png.png'
,'Neon'
,'Pistol'
,'Legendary'

SET @weaponId = (SELECT IDENT_CURRENT('WeaponRanges'))

EXECUTE [dbo].[InsertTraitRange] '+10%', @weaponId, 'Energy Damage'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+25%', @weaponId, 'Magazine Size'
EXECUTE [dbo].[InsertTraitRange] '+20%', @weaponId, 'Damage'
EXECUTE [dbo].[InsertTraitRange] '+30%', @weaponId, 'Damage to slowed and snared targets'
EXECUTE [dbo].[InsertTraitRange] '', @weaponId, 'Damage dealt with this weapon snares the target by 30% for 6 seconds.'

EXECUTE [dbo].[InsertMaterialRange] 7, 'Quartz Crystal', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 24, 'Sturdy Twine', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 1, 'Active Powercell', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 8, 'Malachite Ore', @weaponId
EXECUTE [dbo].[InsertMaterialRange] 15, 'Batteries', @weaponId
