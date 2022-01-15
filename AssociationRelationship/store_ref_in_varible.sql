create or replace type book_t as object (

    book_id int,
    book_title varchar(200),
    book_author ref author_t

)
/

create table authorTable of author_t (
firstName not null
);

create table bookTable of book_t (
book_id not null
);


insert into authortable values ('mee','yello');

select * from authorTable;
declare
    author ref author_t;
begin
    select ref(atu) into author from authorTable atu where firstName='mee';
    
    insert into bookTable values(11,'hello world',author);

end;
/

select b.book_title,b.book_author.firstName from bookTable b ;


