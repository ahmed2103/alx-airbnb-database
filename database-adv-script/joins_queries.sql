select * from bookings inner join users on bookings.user_id = users.user_id;
select * from properties left join reviews on properties.property_id = reviews.property_id;
select * from bookings  left join users on bookings.user_id = users.user_id
UNION
select * from bookings  right join users on bookings.user_id = users.user_id;
