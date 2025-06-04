sql> create table boats (
     bid integer primary key,
     bname varchar2(20) not null unique,
     color varchar2(20)
   );

sql> insert into boats values (101, 'Interlake', 'blue');
     insert into boats values (102, 'Interlake', 'red');
     insert into boats values (103, 'Clipper', 'green');
     insert into boats values (104, 'Marine', 'red');

sql> select * from boats;

/*
       bid bname                color
 ---------- -------------------- --------------------
        101 Interlake            blue
        102 Interlake            red
        103 Clipper              green
        104 Marine               red
*/

sql> desc boats;

/*
 name   null?    type
 ------ -------- -------------
 bid    not null number
 bname  not null varchar2(20)
 color           varchar2(20)
*/