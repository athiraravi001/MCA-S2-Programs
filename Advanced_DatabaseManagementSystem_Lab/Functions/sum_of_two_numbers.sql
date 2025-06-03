sql> set serveroutput on;

-- Perform sum operations
sql> create or replace function sum_two_numbers(a in number, b in number) return number is
     begin
        return a + b;
     end;
     /

-- PL/SQL block to test the function
sql> declare
        num1 number := &num1;
        num2 number := &num2;
        result number;
     begin
        result := sum_two_numbers(num1, num2);
        dbms_output.put_line('Sum is  ' || result);
    end;
    /