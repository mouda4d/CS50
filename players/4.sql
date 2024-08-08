SELECT
    "first_name", "last_name"
FROM
    "players"
WHERE
    NOT "birth_country" LIKE 'USA'
ORDER BY
    "first_name" ASC, "last_name" ASC;
