sql> set serveroutput on;

sql> create or replace function get_weekday(day_num in number) return varchar is
    day_name varchar(20);
    begin
       if day_num = 1 then
           day_name := 'sunday';
       elsif day_num = 2 then
           day_name := 'monday';
       elsif day_num = 3 then
           day_name := 'tuesday';
       elsif day_num = 4 then
           day_name := 'wednesday';
       elsif day_num = 5 then
           day_name := 'thursday';
       elsif day_num = 6 then
           day_name := 'friday';
       elsif day_num = 7 then
           day_name := 'saturday';
       else
           day_name := 'invalid day number';
       end if;
       return day_name;
    end;
    /

sql> declare
        day_num number := &day_num;
        weekday_name varchar(20);
     begin
        weekday_name := get_weekday(day_num);
        dbms_output.put_line('Weekday : ' || weekday_name);
     end;
     /