--EXPLAIN QUERY PLAN
SELECT "to_user_id" FROM "messages"-- JOIN "messages" ON "from_user_id" = "users"."id"
WHERE "from_user_id" = (SELECT "id" FROM "users" WHERE "username" = 'creativewisdom377')
GROUP BY "to_user_id"
ORDER BY COUNT(1) DESC
LIMIT 3;
