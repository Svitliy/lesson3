create database practic;




create table restaurants
(
    id serial not null constraint restaurants_id primary key,
    name varchar,
    link varchar,
    delivery boolean,
    employees integer,
    working_time varchar,
    sale_alcohol boolean
);



create table menus
(
    id serial not null constraint menus_id primary key,
    name varchar,
    price integer,
    weight integer,
    speed_cook integer,
    restaurants_id bigint not null ,
        constraint fk_restaurants_menus_id foreign key (restaurants_id)
references restaurants(id));

insert into restaurants(name, link, delivery, employees, working_time, sale_alcohol)
values ('Gosha', 'http',true,'12', 'с 8.00 до 22.00',true);
insert into restaurants(name, link, delivery, working_time, sale_alcohol)
values ('Gogi', 'http',false,'с 8.00 до 22.00)',false);
insert into restaurants(name, link, delivery)
values ('Vova', 'http',true);
select  * from restaurants where restaurants.name * 'Gogi'
