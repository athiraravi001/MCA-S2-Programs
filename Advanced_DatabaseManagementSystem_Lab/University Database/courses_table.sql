sql> create table courses (
         course_id int primary key,
         course_name varchar2(20) not null,
         department_id int,
         foreign key (department_id) references departments(department_id) on delete cascade
     );

sql> insert into courses values (501, 'Database Systems', 1);
     insert into courses values (502, 'Machine Learning', 1);
     insert into courses values (503, 'Circuit Analysis', 2);
     insert into courses values (504, 'Thermodynamics', 3);
     insert into courses values (505, 'Data Structures', 1);

sql> select * from courses;

/*
 course_id  course_name         department_id
 ---------- ------------------- ---------------
       501  Database Systems            1
       502  Machine Learning            1
       503  Circuit Analysis            2
       504  Thermodynamics              3
       505  Data Structures             1
*/

sql> desc courses;

/*
 name           null?    type
 -------------- -------- --------------------
 course_id      not null number(38)
 course_name    not null varchar2(20)
 department_id           number(38)
*/