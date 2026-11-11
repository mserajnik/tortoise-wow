UPDATE `npc_trainer`
SET `reqlevel` = 5
WHERE `reqlevel` = 0
AND `spell` IN (2020, 2155, 2275, 2551, 3911, 4039, 7414, 15991, 30219);

UPDATE `npc_trainer`
SET `reqlevel` = 10
WHERE `reqlevel` = 0
AND `spell` IN (2021, 2154, 2280, 2373, 2582, 3412, 3912, 4040, 7415, 30223);

UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `reqlevel` = 0
AND `spell` IN (3465, 3539, 3568, 3571, 3812, 3913, 4041, 7416, 30225);

UPDATE `npc_trainer`
SET `reqlevel` = 35
WHERE `reqlevel` = 0
AND `spell` IN (9786, 10249, 10663, 10769, 11612, 11994, 12181, 12657, 13921, 18631, 18632, 30227);

UPDATE `npc_trainer`
SET `reqlevel` = 40
WHERE `reqlevel` = 0
AND `spell` IN (7109, 8738);

UPDATE `npc_trainer`
SET `reqlevel` = 60
WHERE `reqlevel` = 0
AND `spell` = 47380;

UPDATE `npc_trainer`
SET `spellcost` = 34000
WHERE `spellcost` = 50000
AND `spell` = 47380;

UPDATE `npc_trainer`
SET `reqlevel` = 30
WHERE `reqlevel` = 25
AND `spell` = 47329;

UPDATE `npc_trainer`
SET `reqlevel` = 18
WHERE `reqlevel` = 38
AND `spell` = 6553;

UPDATE `npc_trainer`
SET `reqlevel` = 14
WHERE `reqlevel` = 54
AND `spell` = 1482;

UPDATE `npc_trainer`
SET `reqlevel` = 54
WHERE `reqlevel` = 58
AND `spell` = 47325;

UPDATE `npc_trainer`
SET `reqlevel` = 20
WHERE `reqlevel` = 60
AND `spell` = 47277;
