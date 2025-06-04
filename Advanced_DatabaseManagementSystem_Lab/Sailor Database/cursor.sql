-- To create and use an explicit cursor to display the sid and rating of all records from the sailors table

sql> set serveroutput on;

sql> declare
        cursor c1 is
        select sid, rating from sailors;
        a c1%rowtype;
     begin
        open c1;
        dbms_output.put_line('SID RATING');
        loop
          fetch c1 into a;
          exit when c1%notfound;
          dbms_output.put_line(a.sid || ' ' || a.rating);
        end loop;
        close c1;
     end;
     /

/*
 SID RATING
 22  7
 29  1
 31  8
 32  8
 58  10
 64  7
 71  10
 74  9
 85  3
 95  3
 PL/SQL procedure successfully completed.
*/