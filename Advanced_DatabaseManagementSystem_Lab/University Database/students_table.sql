sql> create table students (
         student_id int primary key,
         name varchar(20) not null,
         age int check (age >= 18),
         email varchar(20) unique,
         department_id int,
         foreign key (department_id) references departments(department_id) on delete set null
     );

sql> insert into students values (101, 'Alice Johnson', 20, 'alice@example.com', 1);
     insert into students values (102, 'Bob Smith', 22, 'bob@example.com', 2);
     insert into students values (103, 'Charlie Brown', 19, 'charlie@example.com', 1);
     insert into students values (104, 'David Lee', 23, 'david@example.com', 3);
     insert into students values (105, 'Emily Davis', 21, 'emily@example.com', 2);

sql> select * from students;

/*
 student_id  name              age  email               department_id
 ----------- ----------------- ---- ------------------- --------------
        101  Alice Johnson      20  alice@example.com           1
        102  Bob Smith          22  bob@example.com             2
        103  Charlie Brown      19  charlie@example.com         1
        104  David Lee          23  david@example.com           3
        105  Emily Davis        21  emily@example.com           2
*/

sql> desc students;

/*
 name           null?    type
 -------------- -------- --------------------
 student_id     not null number(38)
 name           not null varchar2(20)
 age                     number(38)
 email                   varchar2(20)
 department_id           number(38)
*/