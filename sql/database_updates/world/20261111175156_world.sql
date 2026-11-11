-- The second effect of Summon RC Tank (24934) needs a `spell_script_target`
-- row and has none, so the whole cast fails before the Tonk is summoned.
DELETE FROM `spell_effect_mod`
WHERE `Id` = 24934
AND `EffectIndex` = 1;

INSERT INTO `spell_effect_mod`
(
    `Id`,
    `EffectIndex`,
    `Effect`,
    `Comment`
)
VALUES
(24934, 1, 0, 'Summon RC Tank - Disable Second Effect');
