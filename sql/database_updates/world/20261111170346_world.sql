-- Event 83 (AQ Gate) stays expired, because while it is active, its gate
-- closes the Ruins and the Temple of Ahn'Qiraj.
UPDATE `game_event`
SET `end_time` = '2037-12-31 23:59:59'
WHERE `end_time` < '2037-01-01'
AND `entry` IN
(
    1, 2, 7, 8, 9, 10, 11, 12, 14, 15, 16, 18, 19, 20, 21, 27, 28, 29,
    30, 31, 32, 34, 35, 36, 37, 38, 40, 41, 42, 45, 46, 47, 48, 49, 50,
    51, 78, 103, 110, 111, 112, 113, 114, 115, 152, 156, 158, 159, 160,
    163, 164
);
