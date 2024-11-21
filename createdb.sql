CREATE DOMAIN pounds AS NUMERIC(12, 2) CHECK (VALUE >= 0);

CREATE TABLE item (
    item_id INT NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    item_price pounds NOT NULL,
    item_manufacturer VARCHAR(100) NOT NULL,
    PRIMARY KEY (item_id)
);

CREATE TABLE customer (
    customer_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    customer_address VARCHAR(255) NOT NULL,
    PRIMARY KEY (customer_id)
);

CREATE DOMAIN star_rating AS INTEGER CHECK (
    VALUE BETWEEN 0
    AND 5
);

CREATE TABLE rating(
    item_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating_date DATE NOT NULL,
    rating_stars star_rating NOT NULL,
    PRIMARY KEY (item_id, customer_id, rating_date),
    FOREIGN KEY (item_id) REFERENCES item (item_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

CREATE DOMAIN positive_integer AS INTEGER CHECK (VALUE > 0);

CREATE TABLE invoice(
    invoice_id INT NOT NULL,
    item_id INT NOT NULL,
    customer_id INT NOT NULL,
    item_quantity positive_integer NOT NULL,
    total_cost pounds NOT NULL,
    PRIMARY KEY (invoice_id),
    FOREIGN KEY (item_id) REFERENCES item (item_id),
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
)