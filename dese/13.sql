SELECT
    "districts"."name", "graduated"
FROM
    "graduation_rates"
JOIN
    "schools"
ON
    "schools"."id" = "graduation_rates"."school_id"
JOIN
    "districts"
ON
    "districts"."id" = "schools"."district_id"
GROUP BY
    "graduated"
HAVING
    "graduated" > (SELECT AVG("graduated") FROM "graduation_rates")
ORDER BY
    "graduated" DESC;
