CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    employee_id INT,
    sale_amount NUMERIC
);

INSERT INTO sales (employee_id, sale_amount)
VALUES
    (1, 100),
    (1, 200),
    (2, 150),
    (2, 300),
    (1, 50),
    (2, 100);

SELECT 
    employee_id,
    sale_amount,
    SUM(sale_amount) OVER (PARTITION BY employee_id ORDER BY id) AS running_total
FROM sales;

-- The PARTITION determines the division into areas (parts) that are checked separately
-- In this case, each employee receives his running calculation separately