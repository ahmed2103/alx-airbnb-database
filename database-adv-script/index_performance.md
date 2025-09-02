# Index Performance Analysis

## High-usage Columns
- `users.user_id` (JOIN with bookings)
- `users.email` (WHERE clause for lookups)
- `bookings.user_id`, `bookings.property_id` (JOIN conditions)
- `bookings.booking_date` (ORDER BY)
- `properties.location` (filters)
- `properties.rating` (filters, aggregates)

## Indexes Created
```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);
CREATE INDEX idx_properties_location ON properties(location);
