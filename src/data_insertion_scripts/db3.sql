-- Inserting 10 dummy data items
INSERT INTO customers (name, email, address, location)
VALUES 
    ('Sophia Brown', 'sophia.brown@example.com', '1234 Maple St, Springfield', 'Springfield, IL'),
    ('Liam Green', 'liam.green@example.com', '5678 Pine St, Rivertown', 'Rivertown, TX'),
    ('Emma Clark', 'emma.clark@example.com', '9101 Oak St, Lakeview', 'Lakeview, VA'),
    ('Benjamin Davis', 'benjamin.davis@example.com', '2345 Birch St, Hilltop', 'Hilltop, CA'),
    ('Oliver Lewis', 'oliver.lewis@example.com', '6789 Redwood St, Valley City', 'Valley City, AZ'),
    ('Mia Walker', 'mia.walker@example.com', '3210 Cedar St, Seaside', 'Seaside, OR'),
    ('Lucas Harris', 'lucas.harris@example.com', '1357 Ash St, Brightville', 'Brightville, NJ'),
    ('Amelia Wilson', 'amelia.wilson@example.com', '2468 Fir St, Greenfield', 'Greenfield, PA'),
    ('Aiden Young', 'aiden.young@example.com', '3579 Willow St, Pleasantville', 'Pleasantville, NY'),
    ('Charlotte Lee', 'charlotte.lee@example.com', '4680 Elm St, Stonehill', 'Stonehill, CO');

-- Inserting 10 new dummy data items into the customers table
INSERT INTO customers (name, email, address, location)
VALUES 
    ('James White', 'james.white@example.com', '1234 Elm St, Springfield', 'Springfield, OH'),
    ('Olivia Brown', 'olivia.brown@example.com', '5678 Oak St, Rivertown', 'Rivertown, FL'),
    ('Sophia Green', 'sophia.green@example.com', '9101 Pine St, Lakeview', 'Lakeview, TX'),
    ('Benjamin Miller', 'benjamin.miller@example.com', '2345 Cedar St, Hilltop', 'Hilltop, NJ'),
    ('Aiden Clark', 'aiden.clark@example.com', '6789 Birch St, Valley City', 'Valley City, CA'),
    ('Mason Scott', 'mason.scott@example.com', '3210 Redwood St, Seaside', 'Seaside, NY'),
    ('Isabella Harris', 'isabella.harris@example.com', '1357 Maple St, Brightville', 'Brightville, PA'),
    ('Ethan Davis', 'ethan.davis@example.com', '2468 Ash St, Greenfield', 'Greenfield, OH'),
    ('Lily Lee', 'lily.lee@example.com', '3579 Willow St, Pleasantville', 'Pleasantville, CO'),
    ('Jackson Young', 'jackson.young@example.com', '4680 Fir St, Stonehill', 'Stonehill, TX');


-- Inserting 10 dummy data items
INSERT INTO sellers (name, email, location)
VALUES 
    ('Samuel King', 'samuel.king@example.com', 'New York, NY'),
    ('Ava Scott', 'ava.scott@example.com', 'Los Angeles, CA'),
    ('Ethan Wright', 'ethan.wright@example.com', 'Chicago, IL'),
    ('Zoe Turner', 'zoe.turner@example.com', 'Houston, TX'),
    ('Jacob Adams', 'jacob.adams@example.com', 'Philadelphia, PA'),
    ('Chloe Harris', 'chloe.harris@example.com', 'Phoenix, AZ'),
    ('Matthew Green', 'matthew.green@example.com', 'Dallas, TX'),
    ('Ella Young', 'ella.young@example.com', 'Miami, FL'),
    ('Henry White', 'henry.white@example.com', 'San Francisco, CA'),
    ('Grace Baker', 'grace.baker@example.com', 'Seattle, WA');

-- Inserting 10 new dummy data items into the sellers table
INSERT INTO sellers (name, email, location)
VALUES 
    ('Isaac Miller', 'isaac.miller@example.com', 'Austin, TX'),
    ('Harper White', 'harper.white@example.com', 'San Diego, CA'),
    ('Mason Thompson', 'mason.thompson@example.com', 'Orlando, FL'),
    ('Lily Carter', 'lily.carter@example.com', 'Chicago, IL'),
    ('Ryan Walker', 'ryan.walker@example.com', 'New York, NY'),
    ('Ella Lee', 'ella.lee@example.com', 'Los Angeles, CA'),
    ('Jacob Martin', 'jacob.martin@example.com', 'Dallas, TX'),
    ('Amelia Johnson', 'amelia.johnson@example.com', 'Miami, FL'),
    ('Daniel Robinson', 'daniel.robinson@example.com', 'Seattle, WA'),
    ('Grace Parker', 'grace.parker@example.com', 'San Francisco, CA');


-- Inserting 10 dummy data items
INSERT INTO products (name, price, seller_id)
VALUES 
    ('Wireless Earbuds', 99.99, 1),
    ('Smartphone Stand', 39.99, 2),
    ('Gaming Monitor', 249.99, 3),
    ('Fitness Watch', 79.99, 4),
    ('Bluetooth Speaker', 59.99, 5),
    ('Smartphone Charger', 19.99, 6),
    ('Laptop Sleeve', 29.99, 7),
    ('Digital Watch', 149.99, 8),
    ('HD Webcam', 79.99, 9),
    ('Portable Speaker', 45.99, 10);

-- Inserting 10 new dummy data items into the products table
INSERT INTO products (name, price, seller_id)
VALUES 
    ('LED Desk Lamp', 24.99, 1),
    ('Portable Power Bank', 49.99, 2),
    ('Laptop Cooling Pad', 29.99, 3),
    ('Bluetooth Mouse', 19.99, 4),
    ('External Hard Drive', 99.99, 5),
    ('Smartphone Screen Protector', 9.99, 6),
    ('Wireless Charging Pad', 39.99, 7),
    ('USB Flash Drive', 15.99, 8),
    ('Tablet Stand', 18.99, 9),
    ('Noise Cancelling Earphones', 79.99, 10);

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
    (1, 1, 'Great sound quality and noise isolation.'),
    (2, 2, 'Perfect for holding my phone while working from home.'),
    (3, 3, 'Excellent display and refresh rate, perfect for gaming.'),
    (4, 4, 'Good fitness watch, easy to use and syncs well with my phone.'),
    (5, 5, 'Fantastic sound for the size, highly recommend.'),
    (6, 6, 'Works well, but I wish it had more fast-charging features.'),
    (7, 7, 'Nice protection for my laptop, fits well.'),
    (8, 8, 'Stylish and reliable, perfect for daily use.'),
    (9, 9, 'Good quality webcam for video calls.'),
    (10, 10, 'Great portable speaker for outdoor use.');

-- Inserting 10 new dummy data items into the productreviews table
INSERT INTO productreviews (product_id, customer_id, review)
VALUES 
    (11, 11, 'Comfortable and great sound for long listening sessions.'),
    (12, 12, 'Great stand, holds my phone at the perfect angle.'),
    (13, 13, 'Immersive gaming experience with a high refresh rate.'),
    (14, 14, 'Helps me track my workouts and progress easily.'),
    (15, 15, 'Clear and crisp sound, perfect for parties.'),
    (16, 16, 'Affordable and reliable, great for charging my devices.'),
    (17, 17, 'Perfect fit and offers great protection for my laptop.'),
    (18, 18, 'Elegant design and very durable, highly recommend.'),
    (19, 19, 'Good video quality, ideal for online meetings.'),
    (20, 20, 'Small but powerful, perfect for travel and outdoor activities.');



