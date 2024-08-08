--EXPLAIN QUERY PLAN
SELECT "username" FROM "messages" JOIN "users" ON "to_user_id" = "users"."id"
GROUP BY "to_user_id"
ORDER BY COUNT(1) DESC, "username" ASC
LIMIT 1;
