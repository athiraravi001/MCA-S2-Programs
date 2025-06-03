sql> create table account (
        account_no number(20) primary key,
        accountholder_name varchar(20),
        balance number(20)
     );
 
sql> insert into account values (1001, 'alice', 5000);
     insert into account values (1002, 'bob', 7500);
     insert into account values (1003, 'charlie', 6200);
     insert into account values (1004, 'diana', 8800);
     insert into account values (1005, 'ethan', 4300);

sql> select * from account;

sql> set serveroutput on;

-- Procedure to perform deposit operation
sql> create or replace procedure deposit(account1 in number, amt1 in number) is
     begin
       update account set balance = balance + amt1 where account_no = account1;

       if sql%rowcount = 0 then
           dbms_output.put_line('account not found');
       else
           dbms_output.put_line('deposit successful');
       end if;
     end;
     /

-- execute deposit procedure
sql> exec deposit(1001, 500);

-- Procedure to perform withdraw operation
sql> create or replace procedure withdraw(account1 in number, amt1 in number) is
        bal number;
     begin
        select balance into bal from account where account_no = account1;

        if bal < amt1 then
            dbms_output.put_line('insufficient balance');
        else
            update account set balance = balance - amt1 where account_no = account1;
            dbms_output.put_line('withdrawal successful');
        end if;

     exception
        when no_data_found then
            dbms_output.put_line('account not found');
     end;
     /

-- execute withdraw procedure
sql> exec withdraw(1002, 1000);

-- For user menu interaction
sql> declare
        choice number(10) := &choice;         
        account1 number(20) := &account1;    
        amount number(20) := &amount;  
     begin
        dbms_output.put_line('Choose your option :-');
        dbms_output.put_line('1 : Deposit');
        dbms_output.put_line('2 : Withdraw');
        dbms_output.put_line('3 : Exit');

        if choice = 1 then
            deposit(account1, amount);
            dbms_output.put_line('amount deposited');
        elsif choice = 2 then
            withdraw(account1, amount);
            dbms_output.put_line('amount withdrawn');
        elsif choice = 3 then
            dbms_output.put_line('exiting...');
        else
            dbms_output.put_line('invalid choice');
        end if;
     end;
     /