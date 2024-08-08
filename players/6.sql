SELECT
    "debut", "first_name", "last_name"
FROM
    "players"
WHERE
    "birth_city" LIKE 'Pittsburgh'
AND
    "birth_state" LIKE 'PA'
ORDER BY
    "debut" desc, "first_name", "last_name";
