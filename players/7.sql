SELECT
    COUNT(1)
FROM
    "players"
WHERE
    ("bats" LIKE 'R' AND "throws" LIKE 'L')
OR
    ("bats" LIKE 'L' AND "throws" LIKE 'R');
