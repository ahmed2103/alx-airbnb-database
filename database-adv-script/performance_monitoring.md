# Database Performance Optimization

This document outlines the performance improvements applied to the **Airbnb Database** project.  
It includes indexing strategies, query refactoring, and continuous monitoring practices.

---

## 1. Indexing Strategy

### Identified High-Usage Columns
From analysis of queries in `User`, `Booking`, and `Property` tables, the following columns were most frequently used in `WHERE`, `JOIN`, and `ORDER BY` clauses:

- `users.user_id`
- `bookings.user_id`
- `bookings.property_id`
- `properties.property_id`

### Index Creation
```sql
-- Index on Users table
CREATE INDEX idx_users_user_id ON users(user_id);

-- Index on Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on Properties table
CREATE INDEX idx_properties_property_id ON properties(property_id);
