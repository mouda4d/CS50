SELECT
    "first_name", "last_name", "salary"
FROM
    "salaries"
JOIN
    "players"
ON
    "players"."id" = "salaries"."player_id"
WHERE
    "salaries"."year" = '2001'
ORDER BY
    "salary" asc, "first_name" asc, "last_name" asc, "players"."id" asc
LIMIT 50;
