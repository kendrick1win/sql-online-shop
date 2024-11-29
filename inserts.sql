INSERT INTO
    item (
        item_id,
        item_name,
        item_price,
        item_manufacturer
    )
VALUES
    (1, 'Iphone 16 Pro', 999.99, 'Apple'),
    (2, 'MacBook Pro', 1599.99, 'Apple'),
    (3, 'Dell Gaming Laptop', 3499.99, 'Dell'),
    (4, 'Dell Gaming Mouse', 49.99, 'Dell'),
    (5, 'Dell Gaming Keyboard', 249.99, 'Dell'),
    (6, 'Airpods Max', 549.99, 'Apple'),
    (7, 'Ipad Pro', 999.99, 'Apple'),
    (8, 'Apple Watch Ultra', 799.99, 'Apple'),
    (9, 'Samsung Phone', 889, 'Samsung'),
    (10, 'Samsung Laptop', 1599.99, 'Samsung');

INSERT INTO
    customer (
        customer_id,
        customer_name,
        customer_address
    )
VALUES
    (1, 'David Dvd', '123 Church Road, London'),
    (2, 'Flash Lwin', '456 Canal Street, Manchester'),
    (3, 'Shein Lwin', '789 Oxford Street, London'),
    (4, 'Melo Dip', '101 Regent Street, London'),
    (5, 'Zo Ball', '202 King Street, Manchester');

INSERT INTO
    rating (
        item_id,
        customer_id,
        rating_date,
        rating_stars
    )
VALUES
    (1, 1, '2024-05-11', 5),
    (2, 2, '2024-06-12', 4),
    (3, 3, '2024-07-23', 3),
    (4, 4, '2024-08-24', 5),
    (5, 5, '2024-09-25', 2),
    (5, 1, '2024-10-01', 3),
    (1, 3, '2024-10-05', 5),
    (4, 5, '2024-10-10', 2),
    (3, 5, '2024-10-15', 4),
    (3, 5, '2024-10-16', 3),
    (8, 5, '2024-10-17', 4),
    (1, 1, '2024-10-18', 5),
    (5, 5, '2024-10-25', 3);

INSERT INTO
    invoice (
        invoice_id,
        item_id,
        customer_id,
        item_quantity,
        total_cost
    )
VALUES
    (1, 1, 1, 1, 999.99),
    (2, 2, 2, 1, 1599.99),
    (3, 3, 3, 1, 3499.99),
    (4, 4, 4, 1, 49.99),
    (5, 5, 5, 1, 249.99),
    (6, 5, 1, 2, 499.98),
    (7, 1, 3, 1, 999.99),
    (8, 4, 5, 3, 149.97),
    (9, 3, 5, 1, 3499.99),
    (10, 1, 2, 1, 999.99),
    (11, 3, 5, 1, 3499.99),
    (12, 8, 5, 1, 799.99),
    (13, 1, 1, 1, 999.99),
    (14, 5, 5, 1, 249.99);