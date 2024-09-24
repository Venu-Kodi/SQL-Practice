SELECT * FROM db.employees;
Time	SQL
15:57:36	select
 deqs.last_execution_time as [Time],
 dest.Text as [Query]
 from
 sys.dm_exec_query_stats as deqs
 cross apply sys.dm_exec_sql_text (deqs.sql_handle) as dest
 order by
 deqs.last_execution_time desc
15:56:25	select
 deqs.last_execution_time as [Time],
 dest.Text as [Query]
 from
 sys.dm_exec_query_stats as deqs
 cross apply sys.dm_exec_sql_text (deqs.sql_handle) as dest
 order by
 deqs.last_execution_time de
15:56:23	select
 deqs.last_execution_time as [Time],
 dest.Text as [Query]
 from
 sys.dm_exec_query_stats as deqs
 cross apply sys.dm_exec_sql_text (deqs.sql_handle) as dest
 order by
 deqs.last_execution_time de
15:55:36	select
 deqs.last_execution_time as [Time],
 dest.text as [Query]
 from
 sys.dm_exec_query_stats as deqs
 cross apply sys.dm_exec_sql_text (deqs.sql_handle) as dest
 order by
 deqs.last_execution_time desc
15:55:00	select
 deqs.last_execution_time as [time],
 dest.text as [query]
 from
 sys.dm_exec_query_stats as deqs
 cross apply sys.dm_exec_sql_text (deqs.sql_handle) as dest
 order by
 deqs.last_execution_time desc
15:20:20	select name from student
 where id=(select cid from city where name='agra')
15:19:45	select name from student
 where name=(select cid from city where name='agra')
15:18:35	select name from student
 where (select cid from city where name='agra')
15:18:22	select cid from city where name='agra'
15:17:59	select id from city where name='agra'
15:01:13	select id, count(id) from student group by id
15:00:35	select * from student group by (course)
14:59:34	select * from student group by course
14:58:30	select * from student group by city
14:58:16	select * from students group by city
14:56:13	select * from city
14:56:00	select * from student
14:49:07	select * from student right join city on student.city=city.cid right join cours on student.course=cours.cid
14:48:53	select * from student right join city on student.city=city.cid inner join cours on student.course=cours.cid
14:48:25	select * from student left join city on student.city=city.cid inner join cours on student.course=cours.cid
14:47:22	select * from student inner join city on student.city=city.cid inner join cours on student.course=cours.cid
14:44:48	select * from student inner join city on student.city=city.cid
14:43:06	SELECT * FROM db.cours
14:42:52	SELECT * FROM db.student
14:42:44	SELECT * FROM db.city
14:37:46	insert into cours values
 (1,'php'),(2,'java'),(3,'c++')
14:37:38	create table cours(
 cid int,
 name varchar(100))
14:37:33	INSERT into city values
 (1,'agra'),(2,'bhopal'),(3,'delhi'),(4,'noida')
14:37:29	create table city(
 cid int,
 name varchar(100))
14:37:22	insert into student values
 (1,"A",23,1,1),(2,'B',25,1,2),(3,'C',20,2,1),(4,'D',19,3,3)
14:37:16	create table student( 
 id int,
 name varchar(100),
 age int null,
 course varchar(100),
 city int)
14:24:34	select * from Teachers
14:24:27	select * from course
14:23:47	select * from Teachers cross join course
13:48:03	select * from Teachers right join course on Teachers.Teacher_id = course.Teacher_id
13:45:45	select * from Teachers left join course on Teachers.Teacher_id = course.Teacher_id
13:45:29	select * from course
13:45:22	insert into course values
 (1,'ds',2,350),(2,'da',1,250),(3,null,6,90)
13:44:52	create table course( 
 course_id int,
 course_title varchar(100),
 Teacher_id int null,
 course_price int)
13:44:43	create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int null,
 course_price int)
13:44:01	select * from Teachers
13:43:56	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),
 (3,'ead',789987)
13:43:30	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),
 (3,'ead'789987)
13:43:05	create table Teachers( 
 Teacher_id int,
 Teacher_name varchar(100) null,
 Teacher_contact varchar(150))
13:42:49	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'ead'789987)
13:42:36	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,789987)
13:41:38	select * from Teachers
13:41:34	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'raj',789987)
13:41:13	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978),(3,'raj')
13:39:46	select * from Teachers left join courses on Teachers.Teacher_id = courses.Teacher_id
13:35:22	select * from courses
13:35:09	insert into courses values
 (1,'ds',2,350),(2,'da',1,250)
13:34:41	insert into values
 (1,'ds',2,350),(2,'da',1,250)
13:34:07	insert into values
 (1,'ds',2,350),(2,'da',1,250),(4,'php',3,120)
13:32:09	create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int,
 course_price int)
13:31:54	create table courses( 
 course_id int,
 course_title varchar(100),
 Teacher_id int,
 course_price)
13:30:18	select * from Teachers
13:29:54	insert into Teachers(Teacher_id, Teacher_name, Teacher_contact)
 values
 (1,"Bhagirath",988998),
 (2,"ramesh",789978)
13:28:03	create table Teachers( 
 Teacher_id int,
 Teacher_name varchar(100),
 Teacher_contact varchar(150))
13:23:39	select * from employees inner join cities on employees.city_id = cities.id
12:54:14	select * from employees inner join cities on employees.city_id = cities.id
12:52:30	select * from employees
12:24:00	select * from customes
12:23:47	rollback
12:23:42	delete from customes where name='venu'
12:23:28	insert into customes values('don',2)
12:23:12	set autocommit=0
12:22:59	commit
12:22:53	insert into customes
 values ("venu",1)
12:22:43	start transaction
12:22:40	create table customes(
 name varchar(50),
 id int)
12:17:26	select * from custom
12:17:22	rollback
12:17:19	delete from custom where name='venu'
12:17:17	insert into custom values('don',2)
12:17:13	set autocommit=0
12:16:23	select * from custom
12:16:13	rollback
12:16:05	delete from custom where name='venu'
12:15:29	insert into custom values('don',2)
12:14:23	commit
12:14:11	insert into custom
 values ("venu",1)
12:14:04	start transaction
12:13:38	SELECT * FROM db.custom
12:13:33	create table custom(
 name varchar(50),
 id int)
12:12:12	insert into customerz values('don',2)
12:12:02	commit
12:11:54	insert into customerz
 values ("venu",1)
12:11:49	create table customerz(
 name varchar(50),
 id int)
12:11:27	create table customer(
 name varchar(50),
 id int)
12:11:10	select * from customer
12:10:54	rollback
12:10:17	delete from customer where name='venu'
12:09:43	delete from customer where name='venu'
12:08:54	delete from customer where name='venu'
12:08:30	delete from customer where name='venu'
12:08:24	delete from customer where name='venu'
12:07:43	delete from customer where name='venu'
12:05:37	delete from customer where name='venu'
12:04:43	select * from customer
12:04:38	ues('don',2)
12:03:21	delete from customer where id=1
12:02:27	select * from customer
 delete from customer where id='1'
12:01:43	delete from customer where id=1
12:01:04	select * from customer
12:00:30	insert into customer values('don',2)
11:59:20	select * from customer
11:58:30	commit
11:58:13	select * from customer
11:57:51	insert into customer
 values ("venu",1)
11:57:12	create table customer(
 name varchar(50),
 id int)
11:47:13	select * from citiez
11:47:03	select * from employees
11:34:02	SELECT * FROM db.cities
11:33:59	SELECT * FROM db.citiez
11:29:56	select * from employees
11:29:44	insert into employees (name,age,email,city_id)
 values
 ('venu',25,'venu@spg.com',1),
 ('prudhvi',28,'pr@deloitte.com',3),
 ('saritha',30,'saritha@hp.com',2)
11:29:00	insert into employees (name, email,city_id)
 values
 ('venu','venu@spg.com',1),
 ('prudhvi','pr@deloitte.com',3),
 ('saritha','saritha@hp.com',2)
11:24:15	select * from employees
11:23:55	create table employees(
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(100) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references citiez(id)
 )
11:23:41	select * from citiez
11:23:33	insert into citiez
 values
 (1,"agra"),(2,"Mumbai"),(3,"china")
11:23:24	create table citiez( 
 id int not null,
 name varchar(100) not null,
 primary key (id))
11:23:13	create table citiez( 
 id int not null,
 name varchar(100) not null,
 primary key (id)
11:23:00	create table cities( 
 id int not null,
 name varchar(100) not null,
 primary key (id))
11:22:26	create table cities( 
 id int not null,
 name varchar(100) not null'
 primary key (id))
11:20:55	create table employees(
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(100) not null,
 city_id int not null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
11:17:12	create table employees(
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int not null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
11:16:46	create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int not null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
11:15:15	create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id)
 )
11:15:06	create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id))
11:12:57	create table employees (
 id int not null auto_increment,
 name varchar(50) not null,
 age int not null,
 email varchar(10) not null,
 city_id int null,
 primary key(id),
 foreign key (city_id) references cities(id))
11:12:36	select * from cities
11:12:23	insert into cities
 values
 (1,"agra"),(2,"Mumbai"),(3,"china")
11:11:05	create table cities( 
 id int not null,
 name varchar(100) not null)
10:20:47	select * from students
10:20:44	create database db
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
 -- Commit and Rollback keys
 select * from students
 -- if commit performs, we dont have the option to go back for rollback option
 
 
 
 
 
 
 
 select * from students
10:16:05	select * from students
10:16:01	commit
10:15:47	select * from students
10:15:40	use db
10:15:17	create database db
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
 -- Commit and Rollback keys
 select * from students
 -- if commit performs, we dont have the option to go back for rollback option
 commit
 rollback
 update students set age=33 where id=1
 rollback
 select * from students
 rollback
 update students set age=35 where id=1
 select * from students
 rollback
 select * from students
10:14:16	select * from students
 rollback
10:14:12	rollback
10:13:57	select * from students
10:13:46	update students set age=35 where id=1
10:13:06	select * from students
 rollback
10:12:20	select * from students
10:12:07	rollback
10:11:53	select * from students
10:11:48	update students set age=33 where id=1
10:11:14	select * from students
10:11:10	rollback
10:10:55	select * from students
10:10:26	commit
10:10:22	create database db
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
 -- Commit and Rollback keys
 select * from students
 -- if commit performs, we dont have the option to go back for rollback option
 commit
09:57:36	select * from students
23:31:22	select * from students
23:31:11	delete from students where id in (5,6)
23:25:17	select * from students
23:25:06	delete from students where id=5
23:03:48	select * from students
23:03:39	update students set age =19, email="ramesh@db.com" where id=2
23:02:09	select * from students
23:02:04	update students set age=44 where id=2
23:00:21	select * from students
22:58:12	use db
22:57:54	create database db
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
22:55:13	select max(age) from students
22:55:07	select min(age) from students
22:55:01	select avg(age) from students
22:53:41	select sum(age) from students
22:52:01	select count(id) from students where age>=24
22:51:27	select count(id) from students
22:46:36	select * from students limit 5 offset 3
22:46:12	select * from students limit 6 offset 0
22:45:53	select * from students limit 5 offset 0
22:45:07	select * from students limit 5 offset 3
22:44:52	select * from students limit 5 offset 0
22:17:09	select * from students order by age desc limit 4
22:16:38	select * from students order by name desc limit 4
22:15:03	select * from students limit 3
22:06:49	select * from students where age is null or name is null
22:06:31	select * from students where age is null and name is null
22:06:04	select * from students where age is null and age is null
22:05:04	select * from students where age is not null
22:04:45	select * from students where age is null
22:03:05	select * from students where name is null
22:02:41	select * from students
22:02:21	insert into students
 values (6,NULL,"NON@GMAIL.COM",45,1)
22:01:55	select * from students
22:00:30	select * from students where name,age is null
22:00:11	select * from students where name , age is null
21:58:42	select * from students where name is not null
21:58:27	select * from students where age is null
21:58:13	select * from students where name is null
21:57:50	select * from students
21:51:32	select distinct name from students order by name asc
21:51:20	select distinct name from students order by name desc
21:50:55	select distinct name from students
21:50:37	select * from students
21:50:19	select distinct name from students order by name a
21:50:00	select distinct age from students order by name asc
21:48:07	select distinct age from students order by age asc
21:44:54	select distinct age from students
21:44:35	select distinct name from students
21:43:33	select * from students
21:43:20	insert into students
 values
 (5,"mesh","mesih@gmail.com",23,1)
21:43:02	insert into students
 values
 (5,"mesh","mesh@gmail.com",23,1)
21:42:26	select * from students
21:42:00	insert into students
 values
 (5,mesh,mesh@gmail.com,23,1)
21:37:58	select * from students order by age desc
21:37:41	select * from students order by name desc
21:36:59	select * from students order by age dsc
21:36:44	select * from students
21:36:17	select * from students order by age dsc
21:35:55	select * from students order by name asc
21:35:05	select * from students
21:26:22	select * from students where age
 not between 24 and 88
21:25:40	select * from students where age
 between 24 and 88
21:23:03	select * from students
21:22:50	select * from users
21:20:52	create database db
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
21:18:33	select * from students where name like "_h%"
21:17:51	select * from students where name like "_h"
21:17:28	select * from students where name like "_f"
21:16:48	select * from students where name like "%b%"
21:16:29	select * from students where name like "%b"
21:16:15	select * from students where name like "b%"
21:14:12	select * from students
21:14:07	use db
21:14:00	select * from students
21:13:40	select * from students
21:13:33	select * from students
16:45:14	select * from students where age in (20,89,42,23)
16:43:31	select * from students where age=20 or age=21 or age=42
16:37:16	select * from students
16:37:11	select * from students
 where not name="ramesh"
16:37:06	select * from students
 where age <42 or name="hagirath"
16:36:59	select * from students
 where age >=19 and age <42 and name="Bhagirath"
16:36:51	select * from students
 where age >=19 and age <42
16:36:48	select * from students
16:36:41	select * from students
 where age >=19 and age <42 and name="Bhagirath"
16:36:36	select * from students
16:36:32	select * from students
 where age >=19 and age <42
16:36:26	select * from students
 where age >=19 and age <=42
16:36:20	select * from students
16:36:14	insert into students(id, name, email, age)
 values
 (3,"hagirath","hagi@gmail.com","89"),
 (4,"mesh","mesh@gmail.com",42)
16:35:52	select * from students
 insert into students(id, name, email, age)
 values
 (3,"hagirath","hagi@gmail.com","89"),
 (4,"mesh","mesh@gmail.com",42)
16:35:43	select * from students
16:35:37	insert into students(id, name, email, age)
 values
 (1,"Bhagirath","bhagi@gmail.com","23"),
 (2,"ramesh","ramesh@gmail.com",24)
16:35:30	create table students (
 id int not null unique,
 name varchar(100),
 email varchar(150) not null unique,
 age tinyint check(age>=18),
 status boolean default 1
 )
16:35:14	select id, name as "person name" from users
16:35:08	select * from users
 where id>1
16:35:01	select * from users
 where id=2
16:34:57	select id, name
 from users
16:34:50	select * from users
16:34:44	insert into users
 values
 (5,"Ram","ram@gmail.com","12345876","9010203040","MUMBAI","1990-12-10","M",1)
16:34:29	select * from users
16:34:12	select * from users
 insert into users (id,name,email,password,contact,address,dob,gender,status)
 values
 (2,"Jenny","jenny@gmail.com","12345678","9812123454","SAmbar","1999-01-11","F",0),
 (3,"nani","nani@gmail.com","12345008","9012123454","KUNOOR","1994-01-10","M",1),
 (4,"Jieny","jeiny@gmail.com","12346678","9812133454","SALNOOR","1999-09-10","F",0)
16:33:59	select * from users
 insert into users (id,name,email,password,contact,address,dob,gender,status)
 values
 (2,"Jenny","jenny@gmail.com","12345678","9812123454","SAmbar","1999-01-11","F",0),
 (3,"nani","nani@gmail.com","12345008","9012123454","KUNOOR","1994-01-10","M",1),
 (4,"Jieny","jeiny@gmail.com","12346678","9812133454","SALNOOR","1999-09-10","F",0)
16:33:51	insert into users (id,name,email,password,contact,address,dob,gender,status)
 values
 (1,"John","john@gmail.com","12345678","9812123454","SALKUNOOR","1999-01-10","M",1)
16:33:45	create table users( 
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
16:33:39	use db
16:33:20	create database db
16:33:08	select * from students
16:32:59	select * from students
16:32:53	elect * from students