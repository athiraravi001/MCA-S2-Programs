declare
    n integer;
begin
    n := &n;
    if n = 1 then
        dbms_output.put_line('Sunday');
    elsif n = 2 then
        dbms_output.put_line('Monday');
    elsif n = 3 then
        dbms_output.put_line('Tuesday');
    elsif n = 4 then
        dbms_output.put_line('Wednesday');
    elsif n = 5 then
        dbms_output.put_line('Thursday');
    elsif n = 6 then
        dbms_output.put_line('Friday');
    elsif n = 7 then
        dbms_output.put_line('Saturday');
    else
        dbms_output.put_line('Invalid input! Please enter a number between 1 and 7.');
    end if;
end;
/