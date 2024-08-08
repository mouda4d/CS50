SELECT
    "year", "HR"
FROM
    "performances"
JOIN
    "players"
ON
    "players"."id" = "performances"."player_id"
WHERE
    "first_name" LIKE 'Ken%'
AND
    "last_name" LIKE '%Griffey%'
AND
    "birth_year" = '1969'
ORDER BY
    "year" DESC;
