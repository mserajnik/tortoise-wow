-- Elder Krasheen (62863) teaches the list that every full mage trainer shares,
-- so the statement copies it from Archmage Shymm (3047).
INSERT IGNORE INTO `npc_trainer`
(
    `entry`,
    `spell`,
    `spellcost`,
    `reqskill`,
    `reqskillvalue`,
    `reqlevel`
)
SELECT 62863, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`
FROM `npc_trainer`
WHERE `entry` = 3047;

-- Horsekeeper Geringt (62183) teaches riding from the template that every
-- other riding trainer uses.
UPDATE `creature_template`
SET `trainer_id` = 1
WHERE `entry` = 62183;

-- Without the trainer flag (16), these two trainers offer no training.
UPDATE `creature_template`
SET `npc_flags` = `npc_flags` | 16
WHERE `entry` IN (62183, 62863);

-- Without the stable master flag (8192), these NPCs do not open the stable.
UPDATE `creature_template`
SET `npc_flags` = `npc_flags` | 8192
WHERE `entry` IN (62161, 62401, 62909, 63054, 63058);
