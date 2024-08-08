-- determine how many have the same birthday
-- first of all we need to group by the birthday
-- then we count each of them
SELECT COUNT(1) AS "BirthDay"
FROM "players"
GROUP BY "birth_day";
