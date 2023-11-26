DROP TABLE IF EXISTS products;
CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR,
    amount NUMERIC,
    price NUMERIC
);
INSERT INTO products (id, name, amount, price)
VALUES (
        1,
        'Two-door wardrobe',
        100,
        80
    ),
    (
        2,
        'Dining table',
        1000,
        560
    ),
    (
        3,
        'Towel holder',
        10000,
        5.50
    ),
    (
        4,
        'Computer desk',
        350,
        100
    ),
    (
        5,
        'Chair',
        3000,
        210.64
    ),
    (
        6,
        'Single bed',
        750,
        99
    );