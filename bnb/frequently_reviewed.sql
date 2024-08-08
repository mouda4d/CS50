CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", count(1) AS "reviews"
FROM "listings"
INNER JOIN "reviews" ON
"reviews"."listing_id" = "listings"."id"
GROUP BY "listings"."id"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC
LIMIT 100;
