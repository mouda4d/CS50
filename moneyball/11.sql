SELECT
    "firsT_name", "last_name", ("salary" / "H") AS "dollars per hit"
FROM
    "salaries"
JOIN
    "players"
ON
    "players"."id" = "salaries"."player_id"
JOIN
    "performances"
ON
    "performances"."player_id" = "players"."id" AND "performances"."year" = "salaries"."year"
WHERE
    "salaries"."year" = 2001 AND "performances"."H" > 0
ORDER BY
    "dollars per hit" ASC, "players"."first_name" ASC, "players"."last_name"
LIMIT 10;
