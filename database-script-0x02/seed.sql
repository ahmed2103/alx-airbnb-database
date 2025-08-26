INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Ahmed', 'Hasona', 'ahmed@example.com', 'hash1', '0100000001', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Mona', 'Ali', 'mona@example.com', 'hash2', '0100000002', 'host'),
('33333333-3333-3333-3333-333333333333', 'Khaled', 'Omar', 'khaled@example.com', 'hash3', '0100000003', 'admin');
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222',
 'Sea View Apartment', 'A beautiful apartment facing the sea.', 'Alexandria', 100.00),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222',
 'Cairo Downtown Loft', 'Modern loft in downtown Cairo.', 'Cairo', 80.00);
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
 '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-05', 400.00, 'pending'),

('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
 '11111111-1111-1111-1111-111111111111', '2025-09-10', '2025-09-15', 400.00, 'confirmed');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 400.00, 'credit_card');
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1',
 '11111111-1111-1111-1111-111111111111', 5, 'Amazing place, highly recommended!'),

('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2',
 '11111111-1111-1111-1111-111111111111', 4, 'Good stay, but a bit noisy.');
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111',
 '22222222-2222-2222-2222-222222222222', 'Hi Mona, is the apartment available?'),

('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222',
 '11111111-1111-1111-1111-111111111111', 'Yes Ahmed, it is available for your dates.');
