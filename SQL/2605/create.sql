DROP TABLE IF EXISTS products, providers, categories;

CREATE TABLE providers (
    id NUMERIC PRIMARY KEY,
    name VARCHAR,
    street VARCHAR,
    city VARCHAR,
    state CHAR(2)
);

CREATE TABLE categories (
    id NUMERIC PRIMARY KEY,
    name VARCHAR
);

CREATE TABLE products (
    id NUMERIC PRIMARY KEY,
    name VARCHAR,
    amount NUMERIC,
    price NUMERIC,
    id_providers NUMERIC REFERENCES providers,
    id_categories NUMERIC REFERENCES categories
);

INSERT INTO providers (id, name, street, city, state) VALUES
    (1, 'Henrique',         'Av Brasil',        'Rio de Janeiro',   'RJ'),
    (2, 'Marcelo Augusto',  'Rua Imigrantes',   'Belo Horizonte',   'MG'),
    (3, 'Caroline Silva',   'Av São Paulo',     'Salvador',         'BA'),
    (4, 'Guilerme Staff',   'Rua Central',      'Porto Alegre',     'RS'),
    (5, 'Isabela Moraes',   'Av Juiz Grande',   'Curitiba',         'PR'),
    (6, 'Francisco Accerr', 'Av Paulista',      'São Paulo',        'SP');

INSERT INTO categories (id, name) VALUES
    (1,     'old stock'),
    (2,     'new stock'),
    (3,     'modern'),
    (4,     'commercial'),
    (5,     'recyclable'),
    (6,     'executive'),
    (7,     'superior'),
    (8,     'wood'),
    (9,     'super luxury'),
    (10,    'vintage');

INSERT INTO products (id, name, amount, price, id_providers, id_categories) VALUES
    (1, 'Two-door wardrobe',    100,    800,    6,  8),
    (2, 'Dining table',         1000,   560,    1,  9),
    (3, 'Towel holder',         10000,  25.50,  5,  1),
    (4, 'Computer desk',        350,    320.50, 4,  6),
    (5, 'Chair',                3000,   210.64, 3,  6),
    (6, 'Single bed',           750,    460,    1,  2);