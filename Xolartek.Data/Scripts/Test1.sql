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

--------------------------------------------------------------------

CREATE VIEW [dbo].[SchematicList] AS

SELECT CAST(ROW_NUMBER() OVER(ORDER BY TableId) AS INT) AS Id, * FROM
(SELECT wr.[Id] AS TableId, wr.[Name], wt.[Description]
, TRY_PARSE(wr.[Damage] AS DECIMAL(9,2) USING 'en-US' ) AS Damage
, CAST((TRY_PARSE(wr.[Damage] AS DECIMAL(9,2) USING 'en-US' ) * CAST(wr.[FireRate] AS DECIMAL(9,2))) AS DECIMAL(9,2)) AS DPS
, CAST(wr.[FireRate] AS DECIMAL(9,2)) AS AttackRate
, CAST((CAST(REPLACE(wr.[CritChance],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritChance
, CAST((CAST(REPLACE(wr.[CritDamage],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritDamage
, TRY_PARSE(wr.[Impact] AS DECIMAL(9,2) USING 'en-US' ) AS [Impact]
, TRY_PARSE(wr.[Range] AS DECIMAL(9,2) USING 'en-US' ) AS [Range]
FROM dbo.WeaponRanges wr
INNER JOIN dbo.WeaponTypes wt ON wr.WeaponTypeId = wt.Id

UNION

SELECT wm.[Id] AS TableId, wm.[Name], wt.[Description]
, TRY_PARSE(wm.[Damage] AS DECIMAL(9,2) USING 'en-US' ) AS Damage
, CAST((TRY_PARSE(wm.[Damage] AS DECIMAL(9,2) USING 'en-US' ) * CAST(wm.[FireRate] AS DECIMAL(9,2))) AS DECIMAL(9,2)) AS DPS
, CAST(wm.[FireRate] AS DECIMAL(9,2)) AS AttackRate
, CAST((CAST(REPLACE(wm.[CritChance],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritChance
, CAST((CAST(REPLACE(wm.[CritDamage],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritDamage
, TRY_PARSE(wm.[Impact] AS DECIMAL(9,2) USING 'en-US' ) AS [Impact]
, 0 AS [Range]
FROM dbo.WeaponMelees wm
INNER JOIN dbo.WeaponTypes wt ON wm.WeaponTypeId = wt.Id

UNION

SELECT t.[Id] AS TableId, t.[Name], 'Trap' AS Description
, TRY_PARSE(t.[Damage] AS DECIMAL(9,2) USING 'en-US' ) AS Damage
, CAST((TRY_PARSE(t.[Damage] AS DECIMAL(9,2) USING 'en-US' ) * CAST(t.[FireRate] AS DECIMAL(9,2))) AS DECIMAL(9,2)) AS DPS
, CAST(t.[FireRate] AS DECIMAL(9,2)) AS AttackRate
, CAST((CAST(REPLACE(t.[CritChance],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritChance
, CAST((CAST(REPLACE(t.[CritDamage],'%','') AS DECIMAL(9,4))/100) AS DECIMAL(9,4)) AS CritDamage
, TRY_PARSE(t.[Impact] AS DECIMAL(9,2) USING 'en-US' ) AS [Impact]
, 0 AS [Range]
FROM dbo.WeaponTraps t) temp
