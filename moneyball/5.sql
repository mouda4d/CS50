SELECT
    "name"
FROM
    "teams"
JOIN
    "performances"
ON
    "performances"."team_id" = "teams"."id"
JOIN
    "players"
ON
    "players"."id" = "performances"."player_id"
WHERE
    "players"."first_name" LIKE 'Satchel%'
AND
    "players"."last_name" LIKE '%Paige%';


