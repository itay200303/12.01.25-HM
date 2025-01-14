CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    price NUMERIC,
    tax NUMERIC GENERATED ALWAYS AS (price * 0.2) STORED
);

INSERT INTO products (price) VALUES (100), (200);

SELECT * FROM products;

-- ALWAYS GENERATED means that the column value is automatically generated based on the expression defined