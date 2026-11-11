-- Rogue spells cost their full price; the server takes 10% off for players at
-- honored reputation or above.
UPDATE `npc_trainer`
SET `spellcost` = 10
WHERE `spellcost` = 9
AND `spell` = 1789;

UPDATE `npc_trainer`
SET `spellcost` = 100
WHERE `spellcost` = 90
AND `spell` IN (1762, 1780, 2592, 5167);

UPDATE `npc_trainer`
SET `spellcost` = 200
WHERE `spellcost` = 180
AND `spell` IN (5278, 6763);

UPDATE `npc_trainer`
SET `spellcost` = 300
WHERE `spellcost` = 270
AND `spell` IN (652, 2984, 5175, 8648);

UPDATE `npc_trainer`
SET `spellcost` = 800
WHERE `spellcost` = 720
AND `spell` IN (1771, 2593);

UPDATE `npc_trainer`
SET `spellcost` = 1200
WHERE `spellcost` = 1080
AND `spell` IN (1763, 6737, 8678);

UPDATE `npc_trainer`
SET `spellcost` = 1800
WHERE `spellcost` = 1620
AND `spell` IN (6480, 6734, 6764);

UPDATE `npc_trainer`
SET `spellcost` = 2900
WHERE `spellcost` = 2610
AND `spell` = 1781;

UPDATE `npc_trainer`
SET `spellcost` = 3000
WHERE `spellcost` = 2700
AND `spell` IN (1790, 2594, 3422, 6736, 14306);

UPDATE `npc_trainer`
SET `spellcost` = 4000
WHERE `spellcost` = 3600
AND `spell` IN (1728, 1764, 1858, 8634, 8651);

UPDATE `npc_trainer`
SET `spellcost` = 5000
WHERE `spellcost` = 4500
AND `spell` IN (1846, 5768, 6765);

UPDATE `npc_trainer`
SET `spellcost` = 6000
WHERE `spellcost` = 5400
AND `spell` IN (1772, 1838, 8727);

UPDATE `npc_trainer`
SET `spellcost` = 8000
WHERE `spellcost` = 7200
AND `spell` IN (2595, 6769, 6771, 8641, 8701);

UPDATE `npc_trainer`
SET `spellcost` = 8250
WHERE `spellcost` = 7425
AND `spell` = 52718;

UPDATE `npc_trainer`
SET `spellcost` = 10000
WHERE `spellcost` = 9000
AND `spell` IN (340, 1765, 1845, 2843, 6735, 8635, 47297, 51926, 52721);

UPDATE `npc_trainer`
SET `spellcost` = 12000
WHERE `spellcost` = 10800
AND `spell` IN (8625, 8630, 13221);

UPDATE `npc_trainer`
SET `spellcost` = 12500
WHERE `spellcost` = 11250
AND `spell` = 52719;

UPDATE `npc_trainer`
SET `spellcost` = 14000
WHERE `spellcost` = 12600
AND `spell` IN (6505, 6511, 8652, 8697, 8728);

UPDATE `npc_trainer`
SET `spellcost` = 16000
WHERE `spellcost` = 14400
AND `spell` IN (8642, 8723, 8810);

UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spellcost` = 16200
AND `spell` IN (2844, 8622, 8636, 8695);

UPDATE `npc_trainer`
SET `spellcost` = 20000
WHERE `spellcost` = 18000
AND `spell` IN (1791, 1862, 8626, 8638);

UPDATE `npc_trainer`
SET `spellcost` = 22000
WHERE `spellcost` = 19800
AND `spell` = 47298;

UPDATE `npc_trainer`
SET `spellcost` = 27000
WHERE `spellcost` = 24300
AND `spell` IN (1773, 1859, 6775, 11270);

UPDATE `npc_trainer`
SET `spellcost` = 29000
WHERE `spellcost` = 26100
AND `spell` IN (11276, 11282, 11344);

UPDATE `npc_trainer`
SET `spellcost` = 31000
WHERE `spellcost` = 27900
AND `spell` IN (11199, 11287, 11291, 11295, 11360);

UPDATE `npc_trainer`
SET `spellcost` = 33000
WHERE `spellcost` = 29700
AND `spell` IN (11298, 11301);

UPDATE `npc_trainer`
SET `spellcost` = 35000
WHERE `spellcost` = 31500
AND `spell` IN (3423, 8644, 11271);

UPDATE `npc_trainer`
SET `spellcost` = 46000
WHERE `spellcost` = 41400
AND `spell` IN (11277, 11283, 11304, 11345, 11401, 45879, 47274, 47312);

UPDATE `npc_trainer`
SET `spellcost` = 48000
WHERE `spellcost` = 43200
AND `spell` IN (11292, 11296, 11361);

UPDATE `npc_trainer`
SET `spellcost` = 50000
WHERE `spellcost` = 45000
AND `spell` IN (11200, 11302, 51925);

UPDATE `npc_trainer`
SET `spellcost` = 52000
WHERE `spellcost` = 46800
AND `spell` IN (1774, 11272, 11318);

UPDATE `npc_trainer`
SET `spellcost` = 54000
WHERE `spellcost` = 48600
AND `spell` IN (1792, 11278, 11284, 11288, 11346, 45883);

-- Each class learns Dual Wield (1424) and Parry (3128) at its own cost and
-- level, so these statements select the trainers by class.
UPDATE `npc_trainer`
SET `spellcost` = 600
WHERE `spellcost` = 1100
AND `reqlevel` = 10
AND `spell` = 1424
AND `entry` IN (
    SELECT `entry`
    FROM `creature_template`
    WHERE `trainer_type` = 0
    AND `trainer_class` = 1
);

UPDATE `npc_trainer`
SET `spellcost` = 300,
    `reqlevel` = 10
WHERE `spellcost` = 2200
AND `reqlevel` = 20
AND `spell` = 1424
AND `entry` IN (
    SELECT `entry`
    FROM `creature_template`
    WHERE `trainer_type` = 0
    AND `trainer_class` = 4
);

UPDATE `npc_trainer`
SET `spellcost` = 100,
    `reqlevel` = 6
WHERE `spellcost` = 200
AND `reqlevel` = 8
AND `spell` = 3128
AND `entry` IN (
    SELECT `entry`
    FROM `creature_template`
    WHERE `trainer_type` = 0
    AND `trainer_class` = 1
);

UPDATE `npc_trainer`
SET `spellcost` = 100
WHERE `spellcost` = 200
AND `reqlevel` = 8
AND `spell` = 3128
AND `entry` IN (
    SELECT `entry`
    FROM `creature_template`
    WHERE `trainer_type` = 0
    AND `trainer_class` = 2
);

UPDATE `npc_trainer`
SET `spellcost` = 800,
    `reqlevel` = 12
WHERE `spellcost` = 200
AND `reqlevel` = 8
AND `spell` = 3128
AND `entry` IN (
    SELECT `entry`
    FROM `creature_template`
    WHERE `trainer_type` = 0
    AND `trainer_class` = 4
);

UPDATE `npc_trainer`
SET `spellcost` = 1500
WHERE `spellcost` = 1200
AND `reqlevel` = 14
AND `spell` = 1482;

UPDATE `npc_trainer`
SET `spellcost` = 3000
WHERE `spellcost` = 2000
AND `reqlevel` = 18
AND `spell` = 6553;

UPDATE `npc_trainer`
SET `spellcost` = 8000,
    `reqlevel` = 24
WHERE `spellcost` = 20000
AND `reqlevel` = 54
AND `spell` = 8821;

UPDATE `npc_trainer`
SET `spellcost` = 16000,
    `reqlevel` = 34
WHERE `spellcost` = 36000
AND `reqlevel` = 54
AND `spell` = 11606;

UPDATE `npc_trainer`
SET `spellcost` = 34000,
    `reqlevel` = 44
WHERE `spellcost` = 56000
AND `reqlevel` = 54
AND `spell` = 11607;

UPDATE `npc_trainer`
SET `spellcost` = 500
WHERE `spellcost` = 200
AND `reqlevel` = 38
AND `spell` = 23926;

UPDATE `npc_trainer`
SET `spellcost` = 1800
WHERE `spellcost` = 2800
AND `reqlevel` = 46
AND `spell` = 23927;

UPDATE `npc_trainer`
SET `spellcost` = 2800
WHERE `spellcost` = 3100
AND `reqlevel` = 54
AND `spell` = 23928;

UPDATE `npc_trainer`
SET `spellcost` = 4000
WHERE `spellcost` = 2200
AND `reqlevel` = 20
AND `spell` = 47277;

UPDATE `npc_trainer`
SET `spellcost` = 56000
WHERE `spellcost` = 36000
AND `reqlevel` = 54
AND `spell` = 47294;

UPDATE `npc_trainer`
SET `spellcost` = 2000
WHERE `spellcost` = 28000
AND `reqlevel` = 48
AND `spell` = 51603;

UPDATE `npc_trainer`
SET `spellcost` = 2800
WHERE `spellcost` = 36000
AND `reqlevel` = 54
AND `spell` = 51604;

UPDATE `npc_trainer`
SET `spellcost` = 3100
WHERE `spellcost` = 50000
AND `reqlevel` = 60
AND `spell` = 51605;

-- Shaman trainers teach Mail (8738) for 12000 and hunter trainers for 18000,
-- so this statement selects the one hunter trainer.
UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spellcost` = 12000
AND `reqlevel` = 40
AND `spell` = 8738
AND `entry` = 60483;

-- Touch of Weakness rank 2 (19320) costs 150 at Aelthalyste (4606) and Mhulf
-- Nighthorn (62976), and 200 at the other priest trainers.
UPDATE `npc_trainer`
SET `spellcost` = 150
WHERE `spellcost` = 200
AND `reqlevel` = 20
AND `spell` = 19320
AND `entry` = 62976;

UPDATE `npc_trainer`
SET `spellcost` = 600
WHERE `spellcost` = 10000
AND `reqlevel` = 32
AND `spell` = 52641;

UPDATE `npc_trainer`
SET `spellcost` = 1200
WHERE `spellcost` = 23000
AND `reqlevel` = 44
AND `spell` = 52643;

UPDATE `npc_trainer`
SET `spellcost` = 2200
WHERE `spellcost` = 44000
AND `reqlevel` = 58
AND `spell` = 52645;

UPDATE `npc_trainer`
SET `spellcost` = 150
WHERE `spellcost` = 2200
AND `reqlevel` = 20
AND `spell` = 52952;

UPDATE `npc_trainer`
SET `spellcost` = 500
WHERE `spellcost` = 8000
AND `reqlevel` = 30
AND `spell` = 52954;

UPDATE `npc_trainer`
SET `spellcost` = 900
WHERE `spellcost` = 18000
AND `reqlevel` = 40
AND `spell` = 52956;

UPDATE `npc_trainer`
SET `spellcost` = 1200
WHERE `spellcost` = 30000
AND `reqlevel` = 50
AND `spell` = 52958;

UPDATE `npc_trainer`
SET `spellcost` = 2300
WHERE `spellcost` = 50000
AND `reqlevel` = 60
AND `spell` = 52960;

UPDATE `npc_trainer`
SET `spellcost` = 1600
WHERE `spellcost` = 30000
AND `reqlevel` = 50
AND `spell` = 45827;

UPDATE `npc_trainer`
SET `spellcost` = 2100
WHERE `spellcost` = 50000
AND `reqlevel` = 60
AND `spell` = 45828;

UPDATE `npc_trainer`
SET `spellcost` = 15000
WHERE `spellcost` = 18000
AND `reqlevel` = 40
AND `spell` = 51939;

UPDATE `npc_trainer`
SET `spellcost` = 350
WHERE `spellcost` = 7000
AND `reqlevel` = 28
AND `spell` = 51956;

UPDATE `npc_trainer`
SET `spellcost` = 650
WHERE `spellcost` = 14000
AND `reqlevel` = 36
AND `spell` = 51957;

UPDATE `npc_trainer`
SET `spellcost` = 1150
WHERE `spellcost` = 23000
AND `reqlevel` = 44
AND `spell` = 51958;

UPDATE `npc_trainer`
SET `spellcost` = 1750
WHERE `spellcost` = 32000
AND `reqlevel` = 52
AND `spell` = 51959;

UPDATE `npc_trainer`
SET `spellcost` = 2100
WHERE `spellcost` = 50000
AND `reqlevel` = 60
AND `spell` = 51960;

UPDATE `npc_trainer`
SET `spellcost` = 750
WHERE `spellcost` = 18000
AND `reqlevel` = 40
AND `spell` = 52515;

UPDATE `npc_trainer`
SET `spellcost` = 2000
WHERE `spellcost` = 2200
AND `reqlevel` = 20
AND `spell` = 52616;

UPDATE `npc_trainer`
SET `spellcost` = 20000
WHERE `spellcost` = 18000
AND `reqlevel` = 40
AND `spell` = 52617;

UPDATE `npc_trainer`
SET `spellcost` = 18000
WHERE `spellcost` = 23000
AND `reqlevel` = 44
AND `spell` = 51453;

UPDATE `npc_trainer`
SET `spellcost` = 26000
WHERE `spellcost` = 32000
AND `reqlevel` = 52
AND `spell` = 51454;

UPDATE `npc_trainer`
SET `spellcost` = 34000
WHERE `spellcost` = 50000
AND `reqlevel` = 60
AND `spell` = 51455;

UPDATE `npc_trainer`
SET `spellcost` = 4000
WHERE `spellcost` = 5000
AND `reqlevel` = 24
AND `spell` = 51587;

-- Grizzie the Enforcer (80104) lacks the Plate Mail armor skill that warriors
-- learn at level 40.
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
(80104, 7109, 22000, 0, 0, 40);
