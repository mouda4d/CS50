WITH "top 10 H" AS
    (
        SELECT
            "performances"."player_id"
        FROM
            "performances"
        INNER JOIN
            "salaries"
        ON
            "salaries"."player_id" = "performances"."player_id" AND
            "salaries"."year" = "performances"."year"
        AND
            "salaries"."year" = 2001 AND
            "performances"."H" > 0
        ORDER BY
            ("salary" / "H") ASC
            LIMIT 10
    )
,"top 10 RBI" AS
    (
        SELECT
            "performances"."player_id"
        FROM
            "performances"
        INNER JOIN
            "salaries"
        ON
            "salaries"."player_id" = "performances"."player_id" AND
            "salaries"."year" = "performances"."year"

        AND
            "salaries"."year" = 2001 AND
            "performances"."RBI" > 0

        ORDER BY
            ("salary" / "RBI") ASC
            LIMIT 10
    )
SELECT
    "firsT_name", "last_name"
FROM
    "players"
WHERE
    "id" IN (select "player_id" from "top 10 H") AND
    "id" IN (select "player_id" from "top 10 RBI")
ORDER BY
    "players"."id" ASC;



