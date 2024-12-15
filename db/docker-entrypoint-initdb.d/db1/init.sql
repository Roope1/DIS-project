CREATE TABLE IF NOT EXISTS Customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
) PARTITION BY HASH (id);

CREATE TABLE IF NOT EXISTS Customers_0 PARTITION OF Customers 
    FOR VALUES WITH (MODULUS 2, REMAINDER 0);
CREATE TABLE IF NOT EXISTS Customers_1 PARTITION OF Customers 
    FOR VALUES WITH (MODULUS 2, REMAINDER 1);

CREATE TABLE IF NOT EXISTS Sellers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
) PARTITION BY HASH (id);

CREATE TABLE IF NOT EXISTS Sellers_0 PARTITION OF Sellers 
    FOR VALUES WITH (MODULUS 2, REMAINDER 0);
CREATE TABLE IF NOT EXISTS Sellers_1 PARTITION OF Sellers
    FOR VALUES WITH (MODULUS 2, REMAINDER 1);

CREATE TABLE IF NOT EXISTS Products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    seller_id INT NOT NULL,

    FOREIGN KEY (seller_id) REFERENCES Sellers(id)
) PARTITION BY HASH (id);

CREATE TABLE IF NOT EXISTS Products_0 PARTITION OF Products 
    FOR VALUES WITH (MODULUS 2, REMAINDER 0);
CREATE TABLE IF NOT EXISTS Products_1 PARTITION OF Products
    FOR VALUES WITH (MODULUS 2, REMAINDER 1);


CREATE TABLE IF NOT EXISTS Orders (
    id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
) PARTITION BY HASH (id);

CREATE TABLE IF NOT EXISTS Orders_0 PARTITION OF Orders 
    FOR VALUES WITH (MODULUS 2, REMAINDER 0);
CREATE TABLE IF NOT EXISTS Orders_1 PARTITION OF Orders
    FOR VALUES WITH (MODULUS 2, REMAINDER 1);

CREATE TABLE IF NOT EXISTS ProductReviews (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    review TEXT NOT NULL,

    FOREIGN KEY (product_id) REFERENCES Products(id),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
) PARTITION BY HASH (id);

CREATE TABLE IF NOT EXISTS ProductReviews_0 PARTITION OF ProductReviews 
    FOR VALUES WITH (MODULUS 2, REMAINDER 0);
CREATE TABLE IF NOT EXISTS ProductReviews_1 PARTITION OF ProductReviews
    FOR VALUES WITH (MODULUS 2, REMAINDER 1);