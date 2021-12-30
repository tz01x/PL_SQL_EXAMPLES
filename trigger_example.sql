-- stracture 

-- CREATE [OR REPLACE ] TRIGGER trigger_name  
-- {BEFORE | AFTER | INSTEAD OF }  
-- {INSERT [OR] | UPDATE [OR] | DELETE}  
-- ON table_name  
-- [REFERENCING OLD AS o NEW AS n]  
-- [FOR EACH ROW]   
-- DECLARE 
--    Declaration-statements 
-- BEGIN  
--    Executable-statements 
-- EXCEPTION 
--    Exception-handling-statements 
-- END; 
-- /


-- example start 

-- drop table dummy;
-- create table dummy(name varchar(20),id int unique  );

-- insert into dummy values ('tumzed',2);

-- trigger start 

create or replace trigger UNIQUE_ID_CHECKER 
BEFORE INSERT  ON dummy
FOR EACH ROW
DECLARE
    row_count number :=0;
    
    id_is_no_unique exception;
BEGIN
    
    select count(id) INTO row_count from dummy where id = :NEW.id;
    
    if row_count > 0 then
    
        raise id_is_no_unique;
    else
        dbms_output.put_line('id is  unique');
        
    end if;
    

END;
/
-- trigger end 

-- try to insert it will give user define exception 
-- and data won't be insrt into db.

insert into dummy values ('tumzed',2);
