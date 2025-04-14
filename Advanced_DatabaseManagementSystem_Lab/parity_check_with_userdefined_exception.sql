declare
  n integer := &n;
  a exception;
  b exception;
begin
  if mod(n, 2) = 0 then
    raise a;
  else
    raise b;
  end if;
exception
  when a then
    dbms_output.put_line('The input is even');
  when b then
    dbms_output.put_line('The input is odd');
end;
/