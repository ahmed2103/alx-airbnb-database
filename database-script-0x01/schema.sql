create table if not exists User  (
    user_id char(36) primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique not null,
    password_hash varchar(255) not null,
    role ENUM('guest', 'host', 'admin') not null,
    created_at timestamp default current_timestamp
);
create table if not exists Property (
    propery_id char(36) primary key,
    host_id char(36),
    name varchar(100) not null,
    description text not null,
    location varchar(255) not null,
    price_per_night decimal(10, 2) not null,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    foreign key (host_id) references User (user_id)
);
create table if not exists Booking (
    booking_id char(36) primary key,
    property_id char(36),
    user_id char(36),
    start_date date not null,
    end_date date not null,
    total_price decimal(10, 2) not null,
    statuse ENUM('pending', 'confirmed', 'canceled') not null,
    created_at timestamp default current_timestamp,
    foreign key(property_id) references Property(propery_id),
    foreign key (user_id) references User(user_id),
    index idx_property_id (property_id)
);
create table if not exists Payment(
    payment_id char(36) primary key,
    booking_id char(36),
    amount decimal(10,2) NOT NULL,
    payment_date timestamp default current_timestamp,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
    foreign key (booking_id) references Booking(booking_id),
    index idx_booking_id (booking_id)
);
create table if not exists Review(
    review_id char(36) primary key,
    property_id char(36),
    user_id char(36),
    rating integer check ( rating >=1 && rating <=5 ),
    comment text not null,
    created_at timestamp default current_timestamp,
    foreign key (property_id) references Property(propery_id),
    foreign key (user_id) references User (user_id)
);
create table if not exists Message(
    message_id char(36) primary key,
    sender_id char(36),
    recipient_id char(36),
    message_body text not null,
    sent_at timestamp default current_timestamp
)