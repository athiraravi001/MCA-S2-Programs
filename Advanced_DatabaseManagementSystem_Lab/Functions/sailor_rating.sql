sql> set serveroutput on;

sql> create or replace function get_rating(sailor_id in number) return number is
     r number;
     begin
        select rating into r from sailors where sid = sailor_id;
        return r;
     end;
     /

sql> declare
        sid number := &sid;
        rating number;
     begin
        rating := get_rating(sid);
        dbms_output.put_line('Rating : ' || rating);
     end;
     /