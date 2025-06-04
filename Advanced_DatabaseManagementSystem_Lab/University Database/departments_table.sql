sql> create table departments (
         department_id int primary key,
         department_name varchar(30) not null unique
     );

sql> insert into departments values (1, 'Computer Science');
     insert into departments values (2, 'Electrical Engineering');
     insert into departments values (3, 'Mechanical Engineering');

sql> select * from departments;

/* 
 department_id  department_name
 -------------  -------------------------
            1   Computer Science
            2   Electrical Engineering
            3   Mechanical Engineering
*/

sql> desc departments;

/* 
 name             null?    type
 ---------------- -------- -------------------------
 department_id     not null number(38)
 department_name   not null varchar2(30)
*/