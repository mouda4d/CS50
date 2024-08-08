SELECT "schools"."name", "schools"."city" FROM "schools"
JOIN "districts" ON
    "districts"."id" = "schools"."district_id"
WHERE "schools"."type" LIKE 'Public School';
--AND
--    NOT "schools"."type" LIKE 'Charter School';

