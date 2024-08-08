
.import --csv meteorites.csv temp
CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" INTEGER,
    "discovery" TEXT, --CHECK("discovery" IN ('Fell', 'Found')),
    "year" NUMERIC,
    "lat" REAL,
    "long" REAL,
    PRIMARY KEY("id")
);

UPDATE "temp"
SET
    "mass" = NULL
WHERE
    "mass" = '';

UPDATE "temp"
SET
    "year" = NULL
WHERE
    "year" = '';

UPDATE "temp"
SET
    "lat" = NULL
WHERE
    "lat" = '';

UPDATE "temp"
SET
    "long" = NULL
WHERE
    "long" = '';

UPDATE "temp"
SET
    "mass" = ROUND("mass"),
    "lat" = ROUND("lat"),
    "long" = ROUND("long");

DELETE FROM "temp" WHERE "nametype" LIKE 'Relict';

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "temp"
ORDER BY "year" ASC, "name" ASC
;
DROP TABLE "temp";
