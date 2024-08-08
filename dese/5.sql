SELECT "city", COUNT(1) AS "SCHOOLS" FROM "schools"
WHERE "type" LIKE 'Public School'
GROUP BY "city"
HAVING "SCHOOLS" <=3
ORDER BY "SCHOOLS" DESC, "city" asc
