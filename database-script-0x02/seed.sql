-- Seed: Users
INSERT INTO user (full_name, email, password_hash)
VALUES 
  ('Alice Johnson', 'alice@example.com', 'hashed_password_1'),
  ('Bob Smith', 'bob@example.com', 'hashed_password_2'),
  ('Charlie Kim', 'charlie@example.com', 'hashed_password_3');

-- Seed: Properties
INSERT INTO property (owner_id, title, location, price_per_night)
VALUES 
  (1, 'Sunny Apartment', 'Cairo, Egypt', 80.00),
  (2, 'Beach House', 'Alexandria, Egypt', 150.00),
  (1, 'City Loft', 'Giza, Egypt', 100.00);

-- Seed: Bookings
INSERT INTO booking (user_id, property_id, check_in, check_out)
VALUES 
  (2, 1, '2025-07-01', '2025-07-05'),
  (3, 2, '2025-07-10', '2025-07-15'),
  (2, 3, '2025-08-01', '2025-08-04');

-- Seed: Reviews
INSERT INTO review (user_id, property_id, rating, comment)
VALUES 
  (2, 1, 5, 'Amazing experience!'),
  (3, 2, 4, 'Great view, but noisy neighbors.'),
  (2, 3, 3, 'Nice place, but a bit small.');

-- Seed: Payments
INSERT INTO payment (booking_id, amount, status)
VALUES 
  (1, 320.00, 'completed'),
  (2, 750.00, 'completed'),
  (3, 300.00, 'pending');
