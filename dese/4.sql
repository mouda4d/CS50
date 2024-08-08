SELECT "city", COUNT(1) AS "SCHOOLS" FROM "schools"
WHERE "type" LIKE 'Public School'
GROUP BY "city"
ORDER BY "SCHOOLS" DESC, "city" asc
LIMIT 10;
