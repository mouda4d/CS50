CREATE VIEW "total" AS
SELECT SUM("families") AS "families",
SUM("households") AS "households",
SUM("population") AS "populations",
SUM("male") AS "males",
SUM("female") AS "females"
FROM "census";
