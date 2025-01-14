CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    details JSONB
);

INSERT INTO products (details)
VALUES
    ('{"name": "Laptop", "price": 1200, "features": {"RAM": "16GB", "Storage": "512GB"}}'),
    ('{"name": "Phone", "price": 800, "features": {"RAM": "8GB", "Storage": "256GB"}}');

SELECT 
    details->>'name' AS product_name,
    details->'features'->>'RAM' AS ram
FROM products;

-- This code creates a table to store products ,inserts two products,
-- and then queries the name of each product and the amount of RAM