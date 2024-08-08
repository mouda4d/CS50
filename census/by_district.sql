CREATE VIEW "by_district" AS
SELECT "district",
SUM("families") AS "families",
SUM("households") AS "households",
SUM("population") AS "populations",
SUM("male") AS "males",
SUM("female") AS "females"
FROM "census"
GROUP BY "district";
