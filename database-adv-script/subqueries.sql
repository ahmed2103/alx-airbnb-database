select * from properties where property_id in (select property_id from reviews
                                            group by property_id having avg(rating) >4);

select * from users u where exists(select 1 from bookings b
                                            where u.user_id = b.user_id
                                            group by b.user_id having count(b.user_id)>3);