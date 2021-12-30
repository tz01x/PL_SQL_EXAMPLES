

-- FUNCTION STRUCTURE 

-- create or replace function <function_name>
-- [(parameters datatyp,...)]
-- return datatype
-- is 
-- <pl/sql block>

-- FUNCTION ALLWAYS *MUST RETURN A VALUE* 




-- function with no parameter 


CREATE OR REPLACE FUNCTION SAY_HAY 
RETURN varchar
IS
begin 
    return 'Hey, You!.';
end;
/

select SAY_HAY as WORD from dual;




-- function with parameter 
CREATE OR REPLACE FUNCTION FEED_NUMBER (num NUMBER)
RETURN NUMBER
IS
begin 
    return num;
end;
/

-- call the function 
select FEED_NUMBER(0221523) as myID from dual;