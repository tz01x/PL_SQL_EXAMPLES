--create a new object type 
-- declear a object type in creating table 
-- author_name is object type of NAME

CREATE OR REPLACE TYPE BOOK AS OBJECT 
(book_title varchar2(20), 

 author_name Name, 
); 
/ 

-- creating collection of object in one object.

create or replace type colection_of_book is Table of BOOK;

-- declearing colection_of_book object in fav_books 

create table favorite_book (

    personName Name,
    fav_books colection_of_book
    
)
nested table fav_books store as my_fav_books
/

-- insert a new row as a nested table relation 

insert into favorite_book values (
        new Name('first name','last name'), 
        new colection_of_book(
            new book('title 1',new Name('first name','last name')),
            new book('title 2',new Name('first name','last name')),
        )
    )

-- displaying nested table relation 

select fav_b.personName.firstName, book.book_title
form favorite_book fav_b,table(fav_b.fav_books) book;
