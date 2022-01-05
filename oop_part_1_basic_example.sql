--create a new object type 
-- declear a object type in creating table 
-- author_name is object type of NAME


create or replace type FULLNAME as OBJECT(
firstName varchar(20),
lastname varchar(20)
);/

drop table user_;
create table user_ (
name_ FULLNAME,
dt DATE DEFAULT CURRENT_DATE
);

insert into user_ (name_,dt) values ( 
     FULLNAME (
    'abdur',
    'rahman'
    ),
    CURRENT_DATE
);

select u.name_.firstName,u.name_.lastname,dt from user_ u ;



CREATE OR REPLACE TYPE BOOK AS OBJECT 
(
book_title varchar(20), 
 author_name FULLNAME
); 
/ 

-- creating collection of object in one object.

create or replace type colection_of_book is Table of BOOK;

-- declearing colection_of_book object in fav_books 

create table favorite_book (

    personName FULLNAME,
    fav_books colection_of_book
    
)
nested table fav_books store as my_fav_books
/

-- insert a new row as a nested table relation 

insert into favorite_book  values (

        new FULLNAME('first name','last name'), 
        new books(
            new book(
                    'title 1',
                    new FULLNAME('first name','last name')
                    ),
            new book(
                    'title 2',
                    new FULLNAME('first name','last name')
                    )
        )
);

-- displaying nested table relation 

select fav_b.personName.firstName, book.book_title
form favorite_book fav_b,table(fav_b.fav_books) book;
