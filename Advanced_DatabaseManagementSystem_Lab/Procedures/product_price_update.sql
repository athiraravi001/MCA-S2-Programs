sql> create table product (
        pid int primary key,
        pname varchar2(20),
        price int
     );

sql> insert into product values (111, 'shampoo', 235);
     insert into product values (333, 'pen', 25);
     insert into product values (555, 'book', 323);
     insert into product values (666, 'paper', 30);
     insert into product values (888, 'pencil', 20);

sql> select * from product;

sql> set serveroutput on;

-- Procedure to display a product by pid
sql> create or replace procedure display(pi number) is
        cursor c is select * from product where pid = pi;
     begin
        dbms_output.put_line('pid pname price');
        for i in c loop
            dbms_output.put_line(i.pid || ' ' || i.pname || ' ' || i.price);
        end loop;
     end;
     /

-- execute display procedure
sql> exec display(111);

-- Procedure to add 100 to product price using user-defined exception
sql> create or replace procedure record(pi number) is
        ex exception;
     begin
        update product set price = price + 100 where pid = pi;

        if sql%notfound then
            raise ex;
        else
            dbms_output.put_line('product price is incremented by 100.');
            display(pi);
        end if;
        
     exception
        when ex then
            dbms_output.put_line('product id invalid');
     end;
    /

-- Execute record procedure
sql> exec record(333);

-- Run the 'record' procedure with user input for product id
sql> declare
        pid int := &pid;
     begin
        record(pid);
     end;
     /