/* Write a query that determines the average number of episodes per season */
/* first of all we want to determine the number of episodes per each season and select that
second we need to take the average of all these numbers
so if there are 8 seasons we are going to select the number of episodes of each on its own then average these 8 numbers */
SELECT AVG("counter") FROM (SELECT COUNT("id") AS "counter" FROM "episodes" GROUP BY "season");

