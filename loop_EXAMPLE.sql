-- while loop 
declare
    i int := 1;
begin
    while i<=10
        loop 
            dbms_output.put_line(i||' '|| i*i || ' ' || i*i*i);
            i:=i+1;
        end loop;

exception
    when NO_DATA_FOUND THEN
        dbms_output.put_line('no such recordes');
end;
/

-- for loop 
declare
    i int := 1;
begin
    for i  in REVERSE 1..11
        loop 
            dbms_output.put_line(i||' '|| i*i || ' ' || i*i*i);
            
        end loop;

exception
    when NO_DATA_FOUND THEN
        dbms_output.put_line('no such recordes');
end;
/
