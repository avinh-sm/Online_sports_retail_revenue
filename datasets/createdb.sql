DROP TABLE info;

CREATE TABLE info
(
    product_name VARCHAR(100),
    product_id VARCHAR(11) PRIMARY KEY,
    description VARCHAR(700)
);

DROP TABLE finance;

CREATE TABLE finance
(
    product_id VARCHAR(11) PRIMARY KEY,
    listing_price FLOAT,
    sale_price FLOAT,
    discount FLOAT,
    revenue FLOAT
);

DROP TABLE reviews;

CREATE TABLE reviews
(
    product_id VARCHAR(11) PRIMARY KEY,
    rating FLOAT,
    reviews FLOAT
);

DROP TABLE traffic;

CREATE TABLE traffic
(
    product_id VARCHAR(11) PRIMARY KEY,
    last_visited TIMESTAMP
);

DROP TABLE brands;

CREATE TABLE brands
(
    product_id VARCHAR(11) PRIMARY KEY,
    brand VARCHAR(7)
);

\copy info FROM 'info.csv' DELIMITER ',' CSV HEADER;
\copy finance FROM 'finance.csv' DELIMITER ',' CSV HEADER;
\copy reviews FROM 'reviews.csv' DELIMITER ',' CSV HEADER;
\copy traffic FROM 'traffic.csv' DELIMITER ',' CSV HEADER;
\copy brands FROM 'brands.csv' DELIMITER ',' CSV HEADER;
