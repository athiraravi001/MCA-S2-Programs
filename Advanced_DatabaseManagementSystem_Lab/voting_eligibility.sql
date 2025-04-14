declare
    age integer;
begin
    age := &age;
    if age >= 18 then
        dbms_output.put_line('Eligible to vote');
    else
        dbms_output.put_line('Not eligible to vote');
    end if;
end;
/