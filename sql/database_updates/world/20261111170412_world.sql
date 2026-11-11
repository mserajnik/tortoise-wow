-- The end is the one that `20261111170346_world.sql` sets, so that this update
-- also works without it.
UPDATE `game_event`
SET `start_time` = '2020-07-04 07:00:00',
    `end_time` = '2037-12-31 23:59:59'
WHERE `start_time` < '2020-07-01'
AND `entry` = 41;
