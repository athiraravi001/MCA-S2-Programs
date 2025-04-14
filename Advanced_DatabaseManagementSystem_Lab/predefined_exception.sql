declare
    sid integer;
    name varchar(20);
begin
    name := '&name'; 
    select sid into sid from Sailors where sname = name;
    dbms_output.put_line(sid);
exception
    when no_data_found then
        dbms_output.put_line('No sailors with given name found');
    when too_many_rows then
        dbms_output.put_line('More than one sailors with same name found');
end;
/