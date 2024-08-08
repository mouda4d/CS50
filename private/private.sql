
CREATE TABLE "cipher" (
    "id" INTEGER,
    "sentence" INTEGER,
    "character" INTEGER,
    "length" INTEGER,
    PRIMARY KEY("id")
);


--.import --csv book_cipher.csv temp
CREATE TABLE "temp" (
    "sentence" INTEGER,
    "character" INTEGER,
    "length" INTEGER
);

INSERT INTO "temp" ("sentence", "character", "length")
VALUES
    (14,98,4),
    (114,3,5),
    (618,72,9),
    (630,7,3),
    (932,12,5),
    (2230,50,7),
    (2346,44,10),
    (3041,14,5);


INSERT INTO "cipher" ("sentence", "character", "length")
SELECT "sentence", "character", "length" FROM "temp";


drop table temp;

CREATE VIEW "message" AS
SELECT substr("sentences"."sentence", "character", "length") AS "phrase"
FROM "cipher"
INNER JOIN "sentences" ON
"sentences"."id" = "cipher"."sentence";
