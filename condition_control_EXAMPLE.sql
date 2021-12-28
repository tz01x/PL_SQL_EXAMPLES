declare 
-- cousor declare 
    cursor c1 is 
        SELECT * FROM HR.EMPLOYEES
        WHERE SALARY > 200;

    cat varchar(1);

begin

    FOR i in  c1
        loop
            if i.salary > 20000 then 
                cat:='A';
            elsif i.salary >= 15000 then 
                cat:='B';
            else
                cat:='C';
        
            end if;
            dbms_output.put_line(i.first_name ||' ' || i.last_name || ' ' || i.salary || ' catagory '|| cat);
        end loop;
            

exception
    when NO_DATA_FOUND THEN
        dbms_output.put_line('no such recordes');
end;
/
