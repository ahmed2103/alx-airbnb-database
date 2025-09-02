select b.*  from bookings b
            join users u on b.user_id = u.user_id
            join payments p on b.booking_id = p.booking_id;
-- Refactored query (perfomance.sql, after EXPLAIN insights)
SELECT
    b.booking_id,
    b.end_date,
    b.start_date,
    b.created_at,
    u.first_name + '' + u.last_name AS user_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id;