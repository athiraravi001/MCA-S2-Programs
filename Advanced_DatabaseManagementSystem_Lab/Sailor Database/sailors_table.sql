sql> create table sailors (
         sid integer primary key,
         sname varchar(30) not null,
         rating integer,
         age real
     );

sql> insert into sailors values (22, 'Dustin', 7, 45);
     insert into sailors values (29, 'Brutus', 1, 33);
     insert into sailors values (31, 'Lubber', 8, 55.5);
     insert into sailors values (32, 'Andy', 8, 25.5);
     insert into sailors values (58, 'Rusty', 10, 35);
     insert into sailors values (64, 'Horatio', 7, 35);
     insert into sailors values (71, 'Zorba', 10, 16);
     insert into sailors values (74, 'Horatio', 9, 40);
     insert into sailors values (85, 'Art', 3, 25.5);
     insert into sailors values (95, 'Bob', 3, 63.5);

sql> select * from sailors;

/*
        sid sname          rating       age
 ---------- -------------- ---------- ----------
         22 Dustin              7         45
         29 Brutus              1         33
         31 Lubber              8       55.5
         32 Andy                8       25.5
         58 Rusty              10         35
         64 Horatio             7         35
         71 Zorba              10         16
         74 Horatio             9         40
         85 Art                 3       25.5
         95 Bob                 3       63.5
*/

sql> desc sailors;

/*
  Name    Null?    Type         
  ------- -------- ------------ 
  SID     NOT NULL NUMBER       
  SNAME   NOT NULL VARCHAR2(30) 
  RATING           NUMBER       
  AGE              FLOAT(63)   
*/