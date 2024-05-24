create database online_cars;
use online_cars;

CREATE TABLE cars (
    make varchar(100),
    model varchar(100),
    year int,
    price decimal(10,2)
	);

	INSERT INTO cars
VALUES
('Porsche', '911 GT3', 2020, 169700),
('Porsche', 'Cayman GT4', 2018, 118000),
('Porsche', 'Panamera', 2022, 113200),
('Porsche', 'Macan', 2019, 27400),
('Porsche', '718 Boxster', 2017, 48880),
('Ferrari', '488 GTB', 2015, 254750),
('Ferrari', 'F8 Tributo', 2019, 375000),
('Ferrari', 'SF90 Stradale', 2020, 627000),
('Ferrari', '812 Superfast', 2017, 335300),
('Ferrari', 'GTC4Lusso', 2016, 268000);


DELIMITER //
create procedure get_information()
begin
select * from cars
where price >5000;
end //

DELIMITER ;

call get_information();

call order_price();



