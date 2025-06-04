sql> set serveroutput on;

sql> declare
        n number;
        r number;
     begin
        n := &n;
        select rating into r from sailors where sid = n;
        dbms_output.put_line('Rating of particular sailor is ' || r);
     end;
     /