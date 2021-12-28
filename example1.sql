-- SELECT * FROM HR.EMPLOYEES;

declare
-- store the retive data in bellow varible 
    f_name varchar(20);
    l_name varchar(20);
begin
    select FIRST_NAME,LAST_NAME  into f_name,l_name 
    FROM HR.EMPLOYEES
    WHERE EMPLOYEE_ID=100000;
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

