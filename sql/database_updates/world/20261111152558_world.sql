-- Twinkie Boomstick (80856) teaches the list that every low-level hunter
-- trainer shares, so the statement copies it from Grif Wildheart (1231).
INSERT IGNORE INTO `npc_trainer`
(
    `entry`,
    `spell`,
    `spellcost`,
    `reqskill`,
    `reqskillvalue`,
    `reqlevel`
)
SELECT 80856, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`
FROM `npc_trainer`
WHERE `entry` = 1231;

-- Without the trainer flag (16), the server ignores these class trainers'
-- spell lists, and no training is offered.
UPDATE `creature_template`
SET `npc_flags` = `npc_flags` | 16
WHERE `entry` IN (62428, 62976, 63075, 63084, 63097);

-- Mayten Boomrifle (80105) has that same list but lacks the Mail armor skill
-- that hunters learn at level 40.
INSERT IGNORE INTO `npc_trainer`
(
    `entry`,
    `spell`,
    `spellcost`,
    `reqskill`,
    `reqskillvalue`,
    `reqlevel`
)
VALUES
(80105, 8738, 18000, 0, 0, 40);
