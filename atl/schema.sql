
CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "check-ins" (
    "passenger_id" INTEGER,
    "datetime" NUMERIC,
    "flight_id" INTEGER,
    FOREIGN KEY("passenger_ID") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("flight_number")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT,
    "concourse" CHECK("concourse" in ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY("id")
);

CREATE TABLE "flights" (
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "depart_code" TEXT,
    "arrive_code" TEXT,
    "departure_datetime" NUMERIC,
    "arrival_datetime" NUMERIC,
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id")
);
--INSERT INTO "flights" VALUES(100, 40, 'COR', 'BAR', '12-1-2024 6:43', '12-1-2024 12:43')
