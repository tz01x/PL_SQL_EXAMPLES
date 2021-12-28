-- table name HR.EMPLOYEES;
-- get all the employee whose salary is grater then 200.

declare 

-- cousor declare 

    cursor c1 is 
        SELECT * FROM HR.EMPLOYEES
        WHERE SALARY > 200;


begin

    FOR i in  c1
        loop
            dbms_output.put_line(i.first_name ||' ' || i.last_name || ' ' || i.salary );
        end loop;
            

exception
    when NO_DATA_FOUND THEN
        dbms_output.put_line('no such recordes');
end;
/
