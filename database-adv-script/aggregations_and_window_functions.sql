select bookings.user_id from bookings group by
                                          user_id having count(user_id) > 1;

select p.property_id, p.name, count(b.booking_id),rank() over (order by count(b.booking_id)) from properties p
join bookings b on b.property_id = p.property_id group by b.property_id;