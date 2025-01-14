CREATE TABLE array_example (
    id SERIAL PRIMARY KEY,
    numbers INT[]
);

INSERT INTO array_example (numbers)
VALUES
    ('{1, 2, 3}'),
    ('{4, 5, 6}');

SELECT numbers[1] AS first_element FROM array_example;

SELECT * FROM array_example WHERE 3 = ANY(numbers);

--The first query selects the first element from each array in the numbers column.
--The second query selects rows where the number 3 is present in the numbers array.