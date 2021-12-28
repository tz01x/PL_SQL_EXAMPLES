-- depend form EXAMPLE1.SQL

declare

    f_name HR.EMPLOYEES.FIRST_NAME%TYPE; -- change here 
    l_name HR.EMPLOYEES.LAST_NAME%TYPE;  -- change here 
begin
    select FIRST_NAME,LAST_NAME  into f_name,l_name 
    FROM HR.EMPLOYEES
    WHERE EMPLOYEE_ID=100;
    -- output of the varible 
    dbms_output.put_line(f_name|| ' ' || l_name);
    
    select FIRST_NAME,LAST_NAME  into f_name,l_name 
    FROM HR.EMPLOYEES
    WHERE EMPLOYEE_ID=101;

    dbms_output.put_line(f_name|| ' ' || l_name);
exception
    when NO_DATA_FOUND THEN
        dbms_output.put_line('no such recordes');
end;
/
