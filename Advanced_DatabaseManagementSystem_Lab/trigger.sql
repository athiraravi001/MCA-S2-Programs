-- 1) To create a trigger to restrict deletion operation on professor table

sql> set serveroutput on;

sql> create table professor (
         pnum int primary key,
         pname varchar2(30),
         salary int
     );

sql> create or replace trigger restrict_del
     before delete on professor
     for each row
     begin
        raise_application_error(-20002, 'Deletion cannot be performed on Professor table');
     end;
     /

sql> insert into professor values (101, 'John', 75000);

sql> delete from professor where pnum = 101;

/*
 DELETE FROM professor WHERE pnum = 101
 *
 ERROR at line 1:
 ORA-20002: Deletion cannot be performed on Professor table
 ORA-06512: at "YOUR_SCHEMA.RESTRICT_DEL", line 2
 ORA-04088: error during execution of trigger 'YOUR_SCHEMA.RESTRICT_DEL'
*/


-- 2) To create a trigger to maintain a student backlog (copy deleted records)

sql> set serveroutput on;

sql> create table student (
         rno number(5) primary key,
         name varchar2(20),
         gender char(1)
     );

sql> create table studbacklog as select * from student where 1=0;

sql> create or replace trigger trig2
     after delete on student
     for each row
     begin
        insert into studbacklog values (:old.rno, :old.name, :old.gender);
     end;
     /

sql> insert into student values (1001, 'John', 'M');
     insert into student values (1002, 'Priya', 'F');

sql> select * from student;

/*
 RNO         NAME                G
 ---------- -------------------- -
 1001        John                M
 1002        Priya               F
*/

sql> delete from student where rno = 1001;

sql> select * from studbacklog;

/*
 RNO        NAME                 G
 ---------- -------------------- -
 1001       John                 M
*/


-- 3) To create a trigger to manage male-female counts

sql> set serveroutput on;

sql> create table fmcount (
         fcount int,
         mcount int
    );

sql> insert into fmcount values (0, 0);

sql> select * from fmcount;

/*
 FCOUNT   MCOUNT
 ---------- ----------
 0        0
*/

sql> create or replace trigger trig1
     after insert on student
     for each row
     begin
       if :new.gender in ('f', 'F') then
          update fmcount set fcount = fcount + 1;
       elsif :new.gender in ('m', 'M') then
          update fmcount set mcount = mcount + 1;
       end if;
     end;
     /

sql> insert into student values (1003, 'Riya', 'F');
     insert into student values (1004, 'Ajay', 'M');

sql> select * from fmcount;

/*
 FCOUNT   MCOUNT
 ---------- ----------
 1        1
*/