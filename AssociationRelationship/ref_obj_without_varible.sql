create table authorTable of author_t (
firstName not null
);

create table bootTable of book_t (
book_id not null
);


insert into authortable values ('mee','yello');

select * from authorTable;


declare

begin
    
    
    insert into bootTable values(11,'hello world',(select ref(atu) from authorTable atu where firstName='mee'));

end;
/

select b.book_title,b.book_author.firstName from bootTable b ;


