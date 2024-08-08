CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT(1) AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON
"availabilities"."listing_id" = "listings"."id"
WHERE "date" LIKE '2023-06-%' AND "available" LIKE 'TRUE'
GROUP BY "listings"."id";
