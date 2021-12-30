-- function must return a value 
-- 

create or replace function <function_name>
[(parameters datatyp,...)]
return datatype
is 
<pl/sql block>



create or replace function square (num Number)
return number
is 
begin 
    return num*num;
end;
/


select square(5) from dual;


