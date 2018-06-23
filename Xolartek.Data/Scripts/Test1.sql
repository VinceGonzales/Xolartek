USE [XolartekDb]
GO
--SELECT [dbo].TestUDF('Vincent')

SELECT * FROM dbo.Traits

SELECT tr.Id, tr.Impact, t.[Description]
, wr.[Name], wt.[Description], wr.Damage, wr.CritChance, wr.CritDamage, wr.Impact
FROM dbo.TraitRanges tr
INNER JOIN dbo.WeaponRanges wr ON tr.Range_Id = wr.Id
INNER JOIN dbo.Traits t ON tr.Trait_Id = t.Id
INNER JOIN dbo.WeaponTypes wt ON wr.WeaponTypeId = wt.Id
WHERE t.[Description] LIKE 'Water Damage'

SELECT tr.Id, tr.Impact, t.[Description]
, wr.[Name], wt.[Description], wr.Damage, wr.CritChance, wr.CritDamage, wr.Impact
FROM dbo.TraitRanges tr
INNER JOIN dbo.WeaponRanges wr ON tr.Range_Id = wr.Id
INNER JOIN dbo.Traits t ON tr.Trait_Id = t.Id
INNER JOIN dbo.WeaponTypes wt ON wr.WeaponTypeId = wt.Id
WHERE t.[Description] LIKE 'Fire Damage'

SELECT tr.Id, tr.Impact, t.[Description]
, wr.[Name], wt.[Description], wr.Damage, wr.CritChance, wr.CritDamage, wr.Impact
FROM dbo.TraitRanges tr
INNER JOIN dbo.WeaponRanges wr ON tr.Range_Id = wr.Id
INNER JOIN dbo.Traits t ON tr.Trait_Id = t.Id
INNER JOIN dbo.WeaponTypes wt ON wr.WeaponTypeId = wt.Id
WHERE t.[Description] LIKE 'Nature Damage'

SELECT tr.Id, tr.Impact, t.[Description]
, wr.[Name], wt.[Description]
, TRY_PARSE(wr.[Damage] AS DECIMAL(9,2) USING 'en-US' ) AS Damage
, CAST((TRY_PARSE(wr.[Damage] AS DECIMAL(9,2) USING 'en-US' ) * CAST(wr.[FireRate] AS DECIMAL(9,2))) AS DECIMAL(9,2)) AS DPS
, CAST(wr.[FireRate] AS DECIMAL(9,2)) AS AttackRate
, wr.CritChance, wr.CritDamage, wr.Impact
, TRY_PARSE(wr.[Range] AS DECIMAL(9,2) USING 'en-US' ) AS [Range]
FROM dbo.TraitRanges tr
INNER JOIN dbo.WeaponRanges wr ON tr.Range_Id = wr.Id
INNER JOIN dbo.Traits t ON tr.Trait_Id = t.Id
INNER JOIN dbo.WeaponTypes wt ON wr.WeaponTypeId = wt.Id
WHERE t.[Description] LIKE 'Energy Damage'
