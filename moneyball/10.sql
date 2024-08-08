SELECT
    "firsT_name", "last_name", "salary", "HR", "salaries"."year"
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
ORDER BY
    "players"."id" ASC, "salaries"."year" DESC, "HR" DESC, "salary" DESC;
