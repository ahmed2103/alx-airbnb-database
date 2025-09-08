SELECT
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM
    "User" AS u
LEFT JOIN
    Booking AS b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name
ORDER BY
    total_bookings DESC, u.last_name;

WITH PropertyBookingCounts AS (
    SELECT
        p.property_id,
        p.name AS property_name,
        COUNT(b.booking_id) AS total_bookings
    FROM
        Property AS p
    LEFT JOIN
        Booking AS b ON p.property_id = b.property_id
    GROUP BY
        p.property_id, p.name
)
SELECT
    property_name,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS property_row_number
FROM
    PropertyBookingCounts
ORDER BY
    property_row_number;
