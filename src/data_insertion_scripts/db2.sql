-- Inserting 10 dummy data items
INSERT INTO customers (name, email, address, location)
VALUES 
    ('Tom Brown', 'tom.brown@example.com', '1234 Pine St, Springfield', 'Springfield, MA'),
    ('Emma White', 'emma.white@example.com', '5678 Maple St, Rivertown', 'Rivertown, OH'),
    ('Olivia Williams', 'olivia.williams@example.com', '9101 Cedar St, Lakeview', 'Lakeview, MI'),
    ('Lucas Harris', 'lucas.harris@example.com', '2345 Oak St, Hilltop', 'Hilltop, FL'),
    ('Sophia Clark', 'sophia.clark@example.com', '6789 Birch St, Valley City', 'Valley City, TX'),
    ('Mason Lee', 'mason.lee@example.com', '3210 Elm St, Seaside', 'Seaside, CA'),
    ('Isabella Garcia', 'isabella.garcia@example.com', '1357 Willow St, Brightville', 'Brightville, NJ'),
    ('Liam Martinez', 'liam.martinez@example.com', '2468 Redwood St, Greenfield', 'Greenfield, PA'),
    ('Mia Davis', 'mia.davis@example.com', '3579 Ash St, Pleasantville', 'Pleasantville, NY'),
    ('Ethan Wilson', 'ethan.wilson@example.com', '4680 Fir St, Stonehill', 'Stonehill, CO');

-- Inserting 10 new dummy data items into the customers table
INSERT INTO customers (name, email, address, location)
VALUES 
    ('Ethan Turner', 'ethan.turner@example.com', '1123 Elm St, Rivertown', 'Rivertown, CA'),
    ('Ava Scott', 'ava.scott@example.com', '7890 Pine St, Brightville', 'Brightville, NJ'),
    ('Liam Thompson', 'liam.thompson@example.com', '5678 Oak St, Greenfield', 'Greenfield, PA'),
    ('Mia Perez', 'mia.perez@example.com', '2345 Birch St, Lakeview', 'Lakeview, TX'),
    ('James Robinson', 'james.robinson@example.com', '9876 Cedar St, Pleasantville', 'Pleasantville, NY'),
    ('Isabella Miller', 'isabella.miller@example.com', '3456 Willow St, Springfield', 'Springfield, IL'),
    ('Benjamin Moore', 'benjamin.moore@example.com', '4567 Ash St, Seaside', 'Seaside, OR'),
    ('Sophia Harris', 'sophia.harris@example.com', '2345 Fir St, Hilltop', 'Hilltop, OH'),
    ('Lucas Martinez', 'lucas.martinez@example.com', '6543 Redwood St, Rivertown', 'Rivertown, FL'),
    ('Charlotte Walker', 'charlotte.walker@example.com', '7654 Maple St, Stonehill', 'Stonehill, CO');



-- Inserting 10 dummy data items
INSERT INTO sellers (name, email, location)
VALUES 
    ('James Smith', 'james.smith@example.com', 'Austin, TX'),
    ('Charlotte Brown', 'charlotte.brown@example.com', 'San Diego, CA'),
    ('Benjamin Lee', 'benjamin.lee@example.com', 'Orlando, FL'),
    ('Avery Walker', 'avery.walker@example.com', 'Chicago, IL'),
    ('Jack Turner', 'jack.turner@example.com', 'New York, NY'),
    ('Harper Green', 'harper.green@example.com', 'Los Angeles, CA'),
    ('Daniel Young', 'daniel.young@example.com', 'Dallas, TX'),
    ('Amelia Scott', 'amelia.scott@example.com', 'Miami, FL'),
    ('Logan Adams', 'logan.adams@example.com', 'Seattle, WA'),
    ('Ella Martin', 'ella.martin@example.com', 'San Francisco, CA');

-- Inserting 10 new dummy data items into the sellers table
INSERT INTO sellers (name, email, location)
VALUES 
    ('Ethan Scott', 'ethan.scott@example.com', 'Dallas, TX'),
    ('Ava Johnson', 'ava.johnson@example.com', 'Miami, FL'),
    ('Oliver Williams', 'oliver.williams@example.com', 'Chicago, IL'),
    ('Lily Brown', 'lily.brown@example.com', 'San Diego, CA'),
    ('Mason Davis', 'mason.davis@example.com', 'Austin, TX'),
    ('Zoe Taylor', 'zoe.taylor@example.com', 'New York, NY'),
    ('Isaac Harris', 'isaac.harris@example.com', 'Los Angeles, CA'),
    ('Emily Miller', 'emily.miller@example.com', 'Seattle, WA'),
    ('Sophia King', 'sophia.king@example.com', 'San Francisco, CA'),
    ('James Robinson', 'james.robinson@example.com', 'Orlando, FL');



-- Inserting 10 dummy data items
INSERT INTO products (name, price, seller_id)
VALUES 
    ('Gaming Laptop', 999.99, 1),
    ('4K TV', 699.99, 2),
    ('Noise Cancelling Headphones', 129.99, 3),
    ('Fitness Tracker', 49.99, 4),
    ('Digital Camera', 499.99, 5),
    ('Smartphone Case', 19.99, 6),
    ('Bluetooth Headphones', 69.99, 7),
    ('Wrist Watch', 159.99, 8),
    ('Laptop Stand', 29.99, 9),
    ('Wireless Mouse', 15.99, 10);

-- Inserting 10 new dummy data items into the products table
INSERT INTO products (name, price, seller_id)
VALUES 
    ('LED Monitor', 199.99, 11),
    ('Smart Thermostat', 249.99, 12),
    ('Bluetooth Speaker', 49.99, 13),
    ('Portable Charger', 29.99, 14),
    ('Electric Toothbrush', 79.99, 15),
    ('Smartphone Stand', 15.99, 16),
    ('Air Purifier', 149.99, 17),
    ('Digital Thermometer', 19.99, 18),
    ('Fitness Watch', 89.99, 19),
    ('Mini Projector', 129.99, 20);

-- Inserting 10 dummy data items
INSERT INTO orders (customer_id, product_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);

-- Inserting 10 new dummy data items into the orders table
INSERT INTO orders (customer_id, product_id)
VALUES 
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);


-- Inserting 10 dummy data items
INSERT INTO productreviews (product_id, customer_id, review)
VALUES 
    (1, 1, 'Excellent gaming performance and great display.'),
    (2, 2, 'Amazing picture quality, worth the price!'),
    (3, 3, 'The headphones block out sound perfectly, love it.'),
    (4, 4, 'Perfect fitness companion, helps track my workouts!'),
    (5, 5, 'Good camera for everyday use, not ideal for professional shoots.'),
    (6, 6, 'Nice design and durable, a bit expensive though.'),
    (7, 7, 'Great sound quality, but a little tight on the ears.'),
    (8, 8, 'Elegant design, feels comfortable on my wrist.'),
    (9, 9, 'Perfect for working from home, great adjustable height.'),
    (10, 10, 'Smooth and responsive, great for long hours of use.');

-- Inserting 10 new dummy data items into the productreviews table
INSERT INTO productreviews (product_id, customer_id, review)
VALUES 
    (11, 11, 'This gaming laptop has incredible performance and speed!'),
    (12, 12, 'The 4K TV offers an amazing visual experience, highly recommended.'),
    (13, 13, 'The noise-canceling headphones work great, perfect for travel.'),
    (14, 14, 'The fitness tracker is very helpful for tracking workouts and steps.'),
    (15, 15, 'This digital camera takes decent photos, good for casual use.'),
    (16, 16, 'The smartphone case is durable and fits perfectly, but a bit bulky.'),
    (17, 17, 'Bluetooth headphones provide good sound, but the battery life could be better.'),
    (18, 18, 'The wristwatch is stylish and comfortable, a great accessory for daily wear.'),
    (19, 19, 'The laptop stand is adjustable and sturdy, very useful for my desk setup.'),
    (20, 20, 'The wireless mouse is super responsive and comfortable for long use.');





