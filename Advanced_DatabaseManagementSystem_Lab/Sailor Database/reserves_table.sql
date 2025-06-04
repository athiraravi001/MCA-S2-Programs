sql> create table reserves (
         sid integer references sailors(sid),
         bid integer,
         day date,
         foreign key (bid) references boats(bid),
         primary key (sid, bid, day)
     );

sql> insert into reserves values (22, 101, '10-oct-98');
     insert into reserves values (22, 102, '10-oct-98');
     insert into reserves values (22, 103, '08-oct-98');
     insert into reserves values (22, 104, '07-oct-98');
     insert into reserves values (31, 102, '10-nov-98');
     insert into reserves values (31, 103, '06-nov-98');
     insert into reserves values (31, 104, '12-nov-98');
     insert into reserves values (64, 101, '05-sep-98');
     insert into reserves values (64, 102, '08-sep-98');
     insert into reserves values (74, 103, '08-sep-98');

sql> select * from reserves;

/*
        sid        bid day
 ---------- ---------- ----------
         22        101 10-oct-98
         22        102 10-oct-98
         22        103 08-oct-98
         22        104 07-oct-98
         31        102 10-nov-98
         31        103 06-nov-98
         31        104 12-nov-98
         64        101 05-sep-98
         64        102 08-sep-98
         74        103 08-sep-98
*/

sql> desc reserves;

/*
 name   null?    type
 ------ -------- -------------
 sid    not null number(38)
 bid             number(38)
 day             date
*/