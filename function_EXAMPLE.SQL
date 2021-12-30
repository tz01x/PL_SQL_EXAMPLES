

-- FUNCTION STRUCTURE 

-- create or replace function <function_name>
-- [(parameters datatyp,...)]
-- return datatype
-- is 
-- <pl/sql block>

-- FUNCTION ALLWAYS *MUST RETURN A VALUE* 
-- FUNCTION CAN BE CALL IN SELECT STATEMENT OR IN PROCEDURE BLOCK



-- function with no parameter 


CREATE OR REPLACE FUNCTION SAY_HAY 
RETURN varchar
IS
begin 
    return 'Hey, You!.';
end;
/
-- CALL THE FUNCTION IN SELECT STATEMENT 
-- dual is dummy table
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


