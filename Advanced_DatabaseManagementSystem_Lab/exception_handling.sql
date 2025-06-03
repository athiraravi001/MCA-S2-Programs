sql> set serveroutput on;

sql> declare
        a integer := &a;  
        b integer := &b;  
        c integer;        
     begin
        if b = 0 then
           raise_application_error(-20001, 'Division by zero'); 
        else
           c := a / b;  
           dbms_output.put_line('Result is ' || c);  
        end if;
     end;
     /