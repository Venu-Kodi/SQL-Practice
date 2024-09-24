-- creating a new databse
create database db
-- use the created database db
use db
-- creating a table
create table users( 
id int,
name varchar(100),
email varchar(150),
password varchar(100),
contact varchar(150),
address text,
dob date,
gender enum("M","F","O"),
status boolean
)
-- Insert Values into created table columns
insert into users (id,name,email,password,contact,address,dob,gender,status)
values
(1,"John","john@gmail.com","12345678","9812123454","SALKUNOOR","1999-01-10","M",1)
--LETS SEE THE TABLE
select * from users
insert into users (id,name,email,password,contact,address,dob,gender,status)
values
(2,"Jenny","jenny@gmail.com","12345678","9812123454","SAmbar","1999-01-11","F",0),
(3,"nani","nani@gmail.com","12345008","9012123454","KUNOOR","1994-01-10","M",1),
(4,"Jieny","jeiny@gmail.com","12346678","9812133454","SALNOOR","1999-09-10","F",0)
select * from users
insert into users
values
(5,"Ram","ram@gmail.com","12345876","9010203040","MUMBAI","1990-12-10","M",1)
select * from users
-- select and where clauses
select id, name
from users
select * from users
where id=2
select * from users
where id>1
-- aias as 
select id, name as "person name" from users
-- constraints in SQL NOT NULL, UNIQUE, DEFAULT, CHECK
-- CLIENT -- SERVER --DATABSE SERVERS
create table students (
id int not null unique,
name varchar(100),
email varchar(150) not null unique,
age tinyint check(age>=18),
status boolean default 1
)
insert into students(id, name, email, age)
values
(1,"Bhagirath","bhagi@gmail.com","23"),
(2,"ramesh","ramesh@gmail.com",24)
select * from students
-- AND, OR, NOT operations
select * from students
insert into students(id, name, email, age)
values
(3,"hagirath","hagi@gmail.com","89"),
(4,"mesh","mesh@gmail.com",42)
select * from students
select * from students
where age >=19 and age <=42
select * from students
where age >=19 and age <42
select * from students
where age >=19 and age <42 and name="Bhagirath"
select * from students
select * from students
where age <42 or name="hagirath"
select * from students
where not name="ramesh"
select * from students
-- IN operator (replaces the or operator -- specifies multiple values in where clause)
select * from students where age=20 or age=21 or age=42
select * from students where age in (20,89,42,23)
-- LIKE operator and Wildcards (%,_)(specific pattern in a column --- a%--starts with a )
-- % represents zero, single or multiple characters, _ represents one, single character
select * from students
select * from students where name like "b%"
select * from students where name like "%b"
select * from students where name like "%b%"
select * from students where name like "_f"
select * from students where name like "_h
select * from students where name like "_h%"
-- between and not between clauses
select * from students
/* select * from table_name where column_name
 between val1 and val 2 */
select * from students where age
between 24 and 88
select * from students where age
not between 24 and 88
-- order by and distinct clauses
/* select * from table_name 
order by col 1 ASC| DESC */
select * from students
select * from students order by name asc
select * from students order by name desc
select * from students order by age desc
-- select distinct col_name from table_name
insert into students
values
(5,"mesh","mesih@gmail.com",23,1)
select * from students
select distinct name from students
select distinct age from students
select distinct age from students
select distinct age from students order by age asc
select distinct name from students
select distinct name from students order by name asc
-- is null and is not null operators
-- select * from table_name where col_name is null | is not null
select * from students where name is null
select * from students where age is null
select * from students where name is not null
insert into students
values (6,NULL,"NON@GMAIL.COM",45,1)
select * from students
select * from students where name is null
select * from students where age is null
select * from students where age is not null
select * from students where age is null and name is null
select * from students where age is null or name is null
-- LIMIT and OFFSET 
-- select * from table_name limit [number to limit by]
select * from students limit 3
select * from students order by name desc limit 4
select * from students order by age desc limit 4
-- OFF SET (specify from where to start returning data)
-- select * from table_name limit 5 offset [number of rows to skip]
select * from students limit 6 offset 0 
select * from students limit 5 offset 3
-- Aggregrate functions (count,sum,avg,min ,max)
select count(id) from students
select count(id) from students where age>=24
select sum(age) from students
select avg(age) from students
select min(age) from students
select max(age) from students
-- update query
-- update table_name set field1=new_value1, field2=new_value2 [where clause] (field=col_name)
select * from students
update students set age=44 where id=2
update students set age =19, email="ramesh@db.com" where id=2
select * from students
-- delete query
-- delete from table_name [where clause]
delete from students where id=5
select * from students
delete from students where id in (5,6)
select * from students
-- 
select * from students
create database db
-- use the created database db
 use db
 create table cities( 
 id int not null,
 name varchar(100) not null)
 insert into cities
 values
 (1,"agra"),(2,"Mumbai"),(3,"china")
 select * from cities
 -- Primary key and Foreign key
 create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id))
 create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id))
 create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
 create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int not null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
 create table employees(
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(100) not null,
 city_id int not null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
 create table cities( 
 id int not null,
 name varchar(100) not null'
 primary key (id))
 create table cities( 
 id int not null,
 name varchar(100) not null,
 primary key (id))
 create table citiez( 
 id int not null,
 name varchar(100) not null,
 primary key (id)
 create table citiez( 
 id int not null,
 name varchar(100) not null,
 primary key (id))
 insert into citiez
 values
 (1,"agra"),(2,"Mumbai"),(3,"china")
 select * from citiez
 create table employees(
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(100) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references citiez(id)
 )
 select * from employees
 insert into employees (name, email,city_id)
 values
 ('venu','venu@spg.com',1),
 ('prudhvi','pr@deloitte.com',3),
 ('saritha','saritha@hp.com',2)
 insert into employees (name,age,email,city_id)
 values
 ('venu',25,'venu@spg.com',1),
 ('prudhvi',28,'pr@deloitte.com',3),
 ('saritha',30,'saritha@hp.com',2)
 select * from employees
 SELECT * FROM db.citiez
 SELECT * FROM db.cities
 select * from employees
 select * from citiez
 create table customer(
 name varchar(50),
 id int)
 insert into customer
 values ("venu",1)
 select * from customer
 -- commit and roll back
 create table customes(
 name varchar(50),
 id int)
 start transaction
 insert into customes
 values ("venu",1)
 commit
 set autocommit=0
 insert into customes values('don',2)
 delete from customes where name='venu'
 rollback
 -- INNER JOIN
 select * from customes
 select * from employees
 select * from employees inner join cities on employees.city_id = cities.id
 select * from employees inner join cities on employees.city_id = cities.id
 create table Teachers( 
 Teacher_id int,
 Teacher_name varchar(100),
 Teacher_contact varchar(150))
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978)
 select * from Teachers
 create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int,
 course_price)
 create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int,
 course_price int)
 insert into values
 (1,'ds',2,350),(2,'da',1,250),(4,'php',3,120)
 insert into values
 (1,'ds',2,350),(2,'da',1,250)
 insert into courses values
 (1,'ds',2,350),(2,'da',1,250)
 select * from courses
 -- left join
 select * from Teachers left join courses on Teachers.Teacher_id = courses.Teacher_id
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'raj')
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'raj',789987)
 select * from Teachers
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,789987)
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'ead'789987)
 create table Teachers( 
 Teacher_id int,
 Teacher_name varchar(100) null,
 Teacher_contact varchar(150))
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),
 (3,'ead'789987)
 insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),
 (3,'ead',789987)
 select * from Teachers
 create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int null,
 course_price int)
 create table course( 
 course_id int,
 course_title varchar(100),
 Teacher_id int null,
 course_price int)
 insert into course values
 (1,'ds',2,350),(2,'da',1,250),(3,null,6,90)
 select * from course
 select * from Teachers left join course on Teachers.Teacher_id = course.Teacher_id
 select * from Teachers right join course on Teachers.Teacher_id = course.Teacher_id
 select * from Teachers cross join course
 select * from course
 select * from Teachers
 create table student( 
 id int,
 name varchar(100),
 age int null,
 course varchar(100),
 city int)
 insert into student values
 (1,"A",23,1,1),(2,'B',25,1,2),(3,'C',20,2,1),(4,'D',19,3,3)
 create table city(
 cid int,
 name varchar(100))
 INSERT into city values
 (1,'agra'),(2,'bhopal'),(3,'delhi'),(4,'noida')
 create table cours(
 cid int,
 name varchar(100))
 insert into cours values
 (1,'php'),(2,'java'),(3,'c++')
 SELECT * FROM db.city
 SELECT * FROM db.student
 SELECT * FROM db.cours
 select * from student inner join city on student.city=city.cid
 select * from student inner join city on student.city=city.cid inner join cours on student.course=cours.cid
 select * from student left join city on student.city=city.cid inner join cours on student.course=cours.cid
 select * from student right join city on student.city=city.cid inner join cours on student.course=cours.cid
 select * from student right join city on student.city=city.cid right join cours on student.course=cours.cid
 select * from student
 select * from city
 select * from students group by city
 select * from student group by city
 select * from student group by course
 select * from student group by (course)
 select id, count(id) from student group by id
 select id from city where name='agra'
 select cid from city where name='agra'
 select name from student
 where (select cid from city where name='agra')
 select name from student
 where name=(select cid from city where name='agra')
 select name from student
 where id=(select cid from city where name='agra')
 -- alter table
 alter table table_name
 add col_name datatype
 
 alter table customers
 add email varchar(255)
 
 alter table customers
 drop column column_name
 
 alter table customers
 drop column email
 
 alter table table_name
 rename column old_name to new_name
 
 