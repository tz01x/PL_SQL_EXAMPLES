create or replace procedure hello_world
is
-- delear var here without diclear block 
begin
    dbms_output.put_line('no such recordes');
end;
/

execute hello_world;

-- ex2 

create or replace procedure hello_world(name in varchar2,id in varchar)
is
-- delear var here without diclear block 
begin
    dbms_output.put_line(name|| ' ' || id);
end;
/

execute hello_world('tz01x','2018-1-60-076');
