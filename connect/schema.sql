
CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "users_connections" (
    "id_1" INTEGER,
    "id_2" INTEGER,
    PRIMARY KEY("id_1", "id_2"),
    FOREIGN KEY("id_1") REFERENCES "users"("id"),
    FOREIGN KEY("id_2") REFERENCES "users"("id")
);

CREATE TABLE "schools" (
    "id" INTEGER,
    "type" TEXT,
    "location" TEXT,
    "year_founded" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "users_schools" (
    "id_1" INTEGER,
    "id_2" INTEGER,
    PRIMARY KEY("id_1", "id_2"),
    FOREIGN KEY("id_1") REFERENCES "users"("id"),
    FOREIGN KEY("id_2") REFERENCES "schools"("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "users_companies" (
    "id_1" INTEGER,
    "id_2" INTEGER,
    PRIMARY KEY("id_1", "id_2"),
    FOREIGN KEY("id_1") REFERENCES "users"("id"),
    FOREIGN KEY("id_2") REFERENCES "companies"("id")
);
