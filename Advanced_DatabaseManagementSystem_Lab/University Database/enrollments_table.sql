sql> create table enrollments (
         enrollment_id int primary key,
         student_id int,
         course_id int,
         grade char(1) check (grade in ('A', 'B', 'C', 'D', 'F')),
         foreign key (student_id) references students(student_id) on delete cascade,
         foreign key (course_id) references courses(course_id) on delete cascade
     );

sql> insert into enrollments values (201, 101, 501, 'A');
     insert into enrollments values (202, 101, 502, 'B');
     insert into enrollments values (203, 102, 503, 'A');
     insert into enrollments values (204, 103, 501, 'C');
     insert into enrollments values (205, 103, 505, 'B');
     insert into enrollments values (206, 104, 504, 'B');
     insert into enrollments values (207, 105, 503, 'A');

sql> select * from enrollments;

/*
 enrollment_id  student_id  course_id  grade
 -------------- ----------- ---------- -----
           201         101        501    A
           202         101        502    B
           203         102        503    A
           204         103        501    C
           205         103        505    B
           206         104        504    B
           207         105        503    A
*/

sql> desc enrollments;

/*
 name           null?    type
 -------------- -------- --------------------
 enrollment_id  not null number(38)
 student_id              number(38)
 course_id               number(38)
 grade                   char(1)
*/