drop database if exists  `office`;
create database `office`;
use office;

drop table if exists mutex;
create table mutex(
    i int not null primary key
);
insert into mutex(i) values (0), (1);

drop table if exists manager;
create table manager(
m_id int not null auto_increment,
m_firstname varchar(20),
m_lastname varchar(30),
primary key(m_id)
);


drop table if exists employee;
create table employee(
e_id int not null auto_increment,
e_firstname varchar(20),
e_lastname varchar(30),
manager_id int,
primary key(e_id),
foreign key(manager_id)
references manager(m_id)
on delete set null
);


drop table if exists address;
create table address(
id int not null auto_increment,
city varchar(20),
street varchar(20),
manager_id int,
employee_id int,
primary key(id),
foreign key(manager_id)
references manager(m_id)
on delete cascade,
foreign key(employee_id)
references employee(e_id)
on delete cascade
);