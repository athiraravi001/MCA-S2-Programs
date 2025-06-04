sql> set serveroutput on;

sql> create or replace function is_even(n number) return varchar2 is
     begin
        if mod(n, 2) = 0 then
            return 'Even';
        else
            return 'Odd';
        end if;
     end;
     /

sql> declare
        num number := &num;
        result varchar2(10);
     begin
        result := is_even(num);
        dbms_output.put_line('The number is ' || result);
     end;
     /