/*
so we need the average salary of a team
we have the salary of each player so we just need to take the average of all players in each team
so we group by the teams and we gonna have a table sorted by players belonging to the same team and we average their salaries
*/
SELECT
    "teams"."name", ROUND(AVG("salary"), 2) as "average salary"
FROM
    "teams"
JOIN
    "salaries"
ON
    "salaries"."team_id" = "teams"."id"
WHERE
    "salaries"."year" = 2001
GROUP BY
    "teams"."id"
--HAVING
ORDER BY
    "average salary" asc
LIMIT 5;
