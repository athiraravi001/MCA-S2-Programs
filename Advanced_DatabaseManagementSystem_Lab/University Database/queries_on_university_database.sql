-- 1) Add a new department "civil engineering" to the departments table 

sql> insert into departments (department_id, department_name) values (4, 'Civil Engineering');

/*
 department_id  department_name
 -------------  ----------------------
 1              Computer Science
 2              Electrical Engineering
 3              Mechanical Engineering
 4              Civil Engineering
*/

-- 2) Insert a new student mark taylor into the students table 

sql> insert into students (student_id, name, age, email, department_id) values (106, 'Mark Taylor', 22, 'mark@example.com', 4);

/*
 student_id  name            age  email               department_id
 ----------  --------------  ---  ------------------- --------------
 101         Alice Johnson   20   alice@example.com    1
 102         Bob Smith       22   bob@example.com      2
 103         Charlie Brown   19   charlie@example.com  1
 104         David Lee       23   david@example.com    3
 105         Emily Davis     21   emily@example.com    2
 106         Mark Taylor     22   mark@example.com     4
*/


-- 3) Add a new course "structural analysis" to the courses table   

sql> insert into courses (course_id, course_name, department_id) values (506, 'Structural Analysis', 4);

/*
 course_id  course_name          department_id
 ---------  -------------------  -------------
 501        Database Systems     1
 502        Machine Learning     1
 503        Circuit Analysis     2
 504        Thermodynamics       3
 505        Data Structures      1
 506        Structural Analysis  4
*/

-- 4) Enroll Mark Taylor in Structural Analysis with grade 'B' 

sql> insert into enrollments (enrollment_id, student_id, course_id, grade) values (208, 106, 506, 'b');

/*
 enrollment_id  student_id  course_id  grade
 -------------  ----------  ---------  -----
 201            101         501        A
 202            101         502        B
 203            102         503        A
 204            103         501        C
 205            103         505        B
 206            104         504        B
 207            105         503        A
 208            106         506        B
*/

-- 5) Update bob smith's email from bob@example.com to bob.smith@example.com in the students table 

sql> update students set email = 'bob.smith@example.com' where name = 'Bob Smith' and email = 'bob@example.com';

/*
 student_id name                 age email                   department_id
 ---------- -------------------- --- ---------------------- -------------
 101        Alice Johnson         20 alice@example.com        1
 102        Bob Smith             22 bob.smith@example.com    2
 103        Charlie Brown         19 charlie@example.com      1
 104        David Lee             23 david@example.com        3
 105        Emily Davis           21 emily@example.com        2
*/

-- 6) Increase the age of all students in the computer science department by 1 year 

sql> update students s set s.age = s.age + 1 where s.department_id = (select d.department_id from departments d where d.department_name = 'Computer Science');

/*
 student_id name                 age email                   department_id
 ---------- -------------------- --- ---------------------- -------------
 101        Alice Johnson         21 alice@example.com        1
 102        Bob Smith             22 bob.smith@example.com    2
 103        Charlie Brown         20 charlie@example.com      1
 104        David Lee             23 david@example.com        3
 105        Emily Davis           21 emily@example.com        2
*/

-- 7) Change Charlie Brown's grade in "database systems" (course_id: 501) from c to b in the enrollments table 

sql> update enrollments e set e.grade = 'B' where e.student_id = (select s.student_id from students s where s.name = 'Charlie Brown') and e.course_id = 501;

/*
 enrollment_id student_id course_id grade
 ------------- ---------- --------- -----
 201           101        501       A
 202           101        502       B
 203           102        503       A
 204           103        501       B
 205           103        505       B
 206           104        504       B
 207           105        503       A
*/

-- 8) Rename the department "Mechanical Engineering" to "Mechatronics" in the departments table 

sql> update departments set department_name = 'Mechatronics' where department_name = 'Mechanical Engineering';

/*
 department_id department_name
 ------------- ----------------------
 1             Computer Science
 2             Electrical Engineering
 3             Mechatronics
*/

-- 9) Retrieve the list of all students and their corresponding departments 

sql> select s.student_id, s.name, d.department_name from students s left join departments d on s.department_id = d.department_id;

/*
 STUDENT_ID NAME            DEPARTMENT_NAME
 ---------- --------------- -------------------
 101        Alice Johnson   Computer Science
 102        Bob Smith       Electrical Engineering
 103        Charlie Brown   Computer Science
 104        David Lee       Mechanical Engineering
 105        Emily Davis     Electrical Engineering
*/

-- 10) Display students enrolled in "Database Systems" (course_id: 501) along with their grades 

sql> select s.student_id, s.name, e.grade from enrollments e join students s on e.student_id = s.student_id where e.course_id = 501;

/*
 STUDENT_ID NAME           GRADE
 ---------- -------------- -----
 101         Alice Johnson A
 103         Charlie Brown C
*/

-- 11) List the students who have received an 'A' grade in any course 

sql> select distinct s.student_id, s.name from enrollments e join students s on e.student_id = s.student_id where e.grade = 'A';

/*
 STUDENT_ID NAME
 ---------- ---------------
 101        Alice Johnson
 102        Bob Smith
 105        Emily Davis
*/

-- 12) Find the number of students in each department 

sql> select d.department_name, count(s.student_id) as student_count from departments d left join students s on d.department_id = s.department_id group by d.department_name;

/*
 DEPARTMENT_NAME         STUDENT_COUNT
 ----------------------- -------------
 Computer Science        2
 Electrical Engineering  2
 Mechanical Engineering  1
*/

-- 13) Show the courses offered by the "Computer Science" department  

sql> select c.course_id, c.course_name from courses c join departments d on c.department_id = d.department_id where d.department_name = 'Computer Science';

/*
 COURSE_ID COURSE_NAME
 --------- ---------------
 501       Database Systems
 502       Machine Learning
 505       Data Structures
*/

-- 14) Display students who are NOT enrolled in any course 

sql> select s.student_id, s.name from students s left join enrollments e on s.student_id = e.student_id where e.student_id is null;

-- 15) Find the top 3 students who are enrolled in the most courses  

sql> select * from ( select s.student_id, s.name, count(e.course_id) as course_count from students s join enrollments e on s.student_id = e.student_id group by s.student_id, s.name order by course_count desc) where rownum <= 3;

/*
 STUDENT_ID  NAME                COURSE_COUNT
 ---------- -------------------- -------------
 101        Alice Johnson         2
 103        Charlie Brown         2
 102        Bob Smith             1
*/

-- 16) Retrieve the average age of students in each department  

sql> select d.department_name, round(avg(s.age), 2) as avg_age from students s join departments d on s.department_id = d.department_id group by d.department_name;

/*
 DEPARTMENT_NAME           AVG_AGE
 ------------------------- --------
 Computer Science          19.5
 Electrical Engineering    21.5
 Mechanical Engineering    23.0
*/

-- 17) Remove Mark Taylor from the students table 

sql> delete from students where name = 'Mark Taylor';

/*
-- STUDENT_ID NAME                 AGE EMAIL                DEPARTMENT_ID
-- ---------- -------------------- --- -------------------- -------------
-- 101        Alice Johnson        20 alice@example.com                 1
-- 102        Bob Smith            22 bob@example.com                   2
-- 103        Charlie Brown        19 charlie@example.com               1
-- 104        David Lee            23 david@example.com                 3
-- 105        Emily Davis          21 emily@example.com                 2
*/

-- 18) Delete all enrollments for students who have failed (Grade = 'F') 

sql> delete from enrollments where grade = 'F';

/*
 ENROLLMENT_ID STUDENT_ID COURSE_ID G
 ------------- ---------- --------- -
 201                  101      501  A
 202                  101      502 B
 204                  103      501 C
 205                  103      505 B
 206                  104      504 B
*/

-- 19) Delete the course "Circuit Analysis" (course_id: 503) from the courses table 

sql> delete from courses where course_id = 503 and course_name = 'Circuit Analysis';

/*
 COURSE_ID COURSE_NAME          DEPARTMENT_ID
 --------- -------------------- -------------
 501       Database Systems                 1
 502       Machine Learning                 1
 504       Thermodynamics                   3
 505       Data Structures                  1
*/

-- 20) Remove all students who are older than 25 years 

sql> delete from students where age > 25;

/*
 STUDENT_ID NAME                 AGE EMAIL                 DEPARTMENT_ID
 ---------- -------------------- --- -------------------- -------------
 101 Alice Johnson               20  alice@example.com                1 
 102 Bob Smith                   22  bob@example.com                  2
 103 Charlie Brown               19  charlie@example.com              1
 104 David Lee                   23  david@example.com                3
 105 Emily Davis                 21  emily@example.com                2
*/