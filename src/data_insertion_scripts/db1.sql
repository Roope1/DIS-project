-- Inserting 10 dummy data items
INSERT INTO customers (name, email, address, location)
VALUES 
    ('John Doe', 'john.doe@example.com', '1234 Elm St, Springfield', 'Springfield, IL'),
    ('Jane Smith', 'jane.smith@example.com', '5678 Oak St, Rivertown', 'Rivertown, CA'),
    ('Alice Johnson', 'alice.johnson@example.com', '9101 Pine St, Lakeview', 'Lakeview, TX'),
    ('Bob Brown', 'bob.brown@example.com', '2345 Maple St, Hilltop', 'Hilltop, OH'),
    ('Charlie White', 'charlie.white@example.com', '6789 Birch St, Valley City', 'Valley City, FL'),
    ('Eve Black', 'eve.black@example.com', '3210 Cedar St, Seaside', 'Seaside, OR'),
    ('Frank Green', 'frank.green@example.com', '1357 Willow St, Brightville', 'Brightville, NJ'),
    ('Grace Red', 'grace.red@example.com', '2468 Redwood St, Greenfield', 'Greenfield, PA'),
    ('Henry Blue', 'henry.blue@example.com', '3579 Ash St, Pleasantville', 'Pleasantville, NY'),
    ('Ivy Yellow', 'ivy.yellow@example.com', '4680 Fir St, Stonehill', 'Stonehill, CO');
    -- Inserting 10 additional dummy data items into the customers table
INSERT INTO customers (name, email, address, location)
VALUES 
    ('Liam Gray', 'liam.gray@example.com', '1230 Maple St, Springdale', 'Springdale, KY'),
    ('Olivia Green', 'olivia.green@example.com', '1122 Pine St, Riverbank', 'Riverbank, MO'),
    ('Mason Black', 'mason.black@example.com', '2156 Oak St, Westfield', 'Westfield, IL'),
    ('Sophia White', 'sophia.white@example.com', '1188 Birch St, Lakeside', 'Lakeside, NJ'),
    ('Jackson Blue', 'jackson.blue@example.com', '3401 Cedar St, Sunnydale', 'Sunnydale, CA'),
    ('Amelia Yellow', 'amelia.yellow@example.com', '4411 Elm St, Fairview', 'Fairview, TX'),
    ('Ethan Brown', 'ethan.brown@example.com', '5502 Maple St, Greenfield', 'Greenfield, NC'),
    ('Isabella Red', 'isabella.red@example.com', '6633 Oak St, Valley View', 'Valley View, CO'),
    ('Aiden Pink', 'aiden.pink@example.com', '7744 Pine St, Hillcrest', 'Hillcrest, OH'),
    ('Harper Violet', 'harper.violet@example.com', '8855 Cedar St, Downtown', 'Downtown, MI');



-- Inserting 10 dummy data items
INSERT INTO sellers (name, email, location)
VALUES 
    ('Oliver Stone', 'oliver.stone@example.com', 'New York, NY'),
    ('Samantha Brooks', 'samantha.brooks@example.com', 'Los Angeles, CA'),
    ('David Clark', 'david.clark@example.com', 'Chicago, IL'),
    ('Rachel Adams', 'rachel.adams@example.com', 'Houston, TX'),
    ('Michael Scott', 'michael.scott@example.com', 'Philadelphia, PA'),
    ('Laura Wilson', 'laura.wilson@example.com', 'Phoenix, AZ'),
    ('James Turner', 'james.turner@example.com', 'Dallas, TX'),
    ('Linda Martinez', 'linda.martinez@example.com', 'Miami, FL'),
    ('Robert King', 'robert.king@example.com', 'San Francisco, CA'),
    ('Nancy Green', 'nancy.green@example.com', 'Seattle, WA');
-- Inserting 10 additional dummy data items into the sellers table
INSERT INTO sellers (name, email, location)
VALUES 
    ('Emma Davis', 'emma.davis@example.com', 'Boston, MA'),
    ('James Wilson', 'james.wilson@example.com', 'San Diego, CA'),
    ('Benjamin Taylor', 'benjamin.taylor@example.com', 'Denver, CO'),
    ('Mia Moore', 'mia.moore@example.com', 'Portland, OR'),
    ('Lucas Harris', 'lucas.harris@example.com', 'Austin, TX'),
    ('Charlotte Clark', 'charlotte.clark@example.com', 'Las Vegas, NV'),
    ('Amos Harris', 'amos.harris@example.com', 'Chicago, IL'),
    ('Eleanor King', 'eleanor.king@example.com', 'Atlanta, GA'),
    ('Jack Lee', 'jack.lee@example.com', 'Miami, FL'),
    ('Sophie Scott', 'sophie.scott@example.com', 'Seattle, WA');


-- Inserting 10 dummy data items
INSERT INTO products (name, price, seller_id)
VALUES 
    ('Laptop', 899.99, 1),
    ('Smartphone', 499.99, 2),
    ('Headphones', 79.99, 3),
    ('Smartwatch', 199.99, 4),
    ('Camera', 350.00, 5),
    ('Tablet', 249.99, 6),
    ('Monitor', 149.99, 7),
    ('Bluetooth Speaker', 59.99, 8),
    ('Keyboard', 39.99, 9),
    ('Mouse', 19.99, 10);

-- Inserting 10 additional dummy data items into the products table
INSERT INTO products (name, price, seller_id)
VALUES 
    ('Gaming PC', 1299.99, 1),
    ('Wireless Earbuds', 89.99, 2),
    ('Action Camera', 499.99, 3),
    ('Bluetooth Headset', 69.99, 4),
    ('External SSD', 120.00, 5),
    ('4K TV', 999.99, 6),
    ('E-Book Reader', 139.99, 7),
    ('Smart Home Hub', 249.99, 8),
    ('Robotic Vacuum', 299.99, 9),
    ('Electric Toothbrush', 49.99, 10);


-- Inserting 10 dummy data items
INSERT INTO orders (customer_id, product_id)
VALUES 
    (1, 1),  -- Customer 1 ordered Product 1
    (2, 2),  -- Customer 2 ordered Product 2
    (3, 3),  -- Customer 3 ordered Product 3
    (4, 4),  -- Customer 4 ordered Product 4
    (5, 5),  -- Customer 5 ordered Product 5
    (6, 6),  -- Customer 6 ordered Product 6
    (7, 7),  -- Customer 7 ordered Product 7
    (8, 8),  -- Customer 8 ordered Product 8
    (9, 9),  -- Customer 9 ordered Product 9
    (10, 10); -- Customer 10 ordered Product 10

-- Inserting 10 additional dummy data items into the orders table
INSERT INTO orders (customer_id, product_id)
VALUES 
    (11, 1),  -- Customer 11 ordered Product 1
    (12, 2),  -- Customer 12 ordered Product 2
    (13, 3),  -- Customer 13 ordered Product 3
    (14, 4),  -- Customer 14 ordered Product 4
    (15, 5),  -- Customer 15 ordered Product 5
    (16, 6),  -- Customer 16 ordered Product 6
    (17, 7),  -- Customer 17 ordered Product 7
    (18, 8),  -- Customer 18 ordered Product 8
    (19, 9),  -- Customer 19 ordered Product 9
    (20, 10); -- Customer 20 ordered Product 10


-- Inserting 10 dummy data items
INSERT INTO productreviews (product_id, customer_id, review)
VALUES 
    (1, 1, 'Great laptop, works smoothly and fast!'),
    (2, 2, 'The smartphone is decent, but the battery life could be better.'),
    (3, 3, 'Headphones have excellent sound quality, very comfortable to wear.'),
    (4, 4, 'Smartwatch is fantastic, syncs well with my phone, but a bit bulky.'),
    (5, 5, 'Camera is good for the price, but I expected sharper images.'),
    (6, 6, 'Tablet is fast and responsive, perfect for browsing and media consumption.'),
    (7, 7, 'Monitor is clear and vibrant, great for gaming and work.'),
    (8, 8, 'Bluetooth speaker is compact but delivers powerful sound.'),
    (9, 9, 'Keyboard is comfortable, but I wish it was more responsive for gaming.'),
    (10, 10, 'Mouse is lightweight, easy to use, and has a smooth glide.');

-- Inserting 10 additional dummy data items into the productreviews table
INSERT INTO productreviews (product_id, customer_id, review)
VALUES 
    (1, 11, 'This gaming PC is awesome! Very fast and handles all my games smoothly.'),
    (2, 12, 'The wireless earbuds are good, but the bass could be better.'),
    (3, 13, 'Great action camera! The video quality is stunning for the price.'),
    (4, 14, 'The Bluetooth headset is comfy, but the range is a bit short.'),
    (5, 15, 'External SSD is fast and reliable. A great purchase for storage.'),
    (6, 16, '4K TV looks fantastic, great picture quality and sound.'),
    (7, 17, 'E-Book reader is lightweight and easy to read for hours.'),
    (8, 18, 'Smart home hub works perfectly with all my devices.'),
    (9, 19, 'The robotic vacuum does its job well, but it gets stuck under furniture sometimes.'),
    (10, 20, 'Electric toothbrush is effective, and my teeth feel cleaner after each use.');

