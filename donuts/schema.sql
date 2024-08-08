
CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT,
    "price" integer,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT,
    "gluten-free" INTEGER CHECK("gluten-free" IN (0, 1)),
    "price" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "ingredients_donuts" (
    "ingredients_id" INTEGER,
    "donuts_id" INTEGER,
    PRIMARY KEY("ingredients_id", "donuts_id"),
    FOREIGN KEY("ingredients_id") REFERENCES "ingredients"("id"),
    FOREIGN KEY("donuts_id") REFERENCES "donuts"("id")
);

CREATE TABLE "orders" (
    "order_number",
    "customer_id",
    PRIMARY KEY("order_number"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "donuts_orders" (
    "donut_id" INTEGER,
    "order_id" INTEGER,
    PRIMARY KEY("donut_id", "order_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("order_number")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT
);
