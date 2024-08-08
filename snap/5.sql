-- lovelytrust487
-- exceptionalinspiration482
-- mutual friends ids
-- so we just need to find all the friends of first guy intersecting friends of seocnd guy
--EXPLAIN QUERY PLAN
SELECT "friend_id" FROM "friends"
WHERE "user_id" = (SELECT "id" FROM "users" WHERE "username" = 'lovelytrust487')

INTERSECT

SELECT "friend_id" FROM "friends"
WHERE "user_id" = (SELECT "id" FROM "users" WHERE "username" = 'exceptionalinspiration482');
