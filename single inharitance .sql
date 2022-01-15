--single inharitance problem 
-- object type 
create or replace type Product_t as object (
    product_id int,
    product_name varchar(20),
    unit_price number
) not final
/

-- create table form object 
create table product_table of product_t
(
product_id not null,
product_name not null,
unit_price not null
);

create or replace type clothing_t under product_t (
    product_material varchar(22),
    product_size varchar(22)
)
/


create table clothing of clothing_t(
product_material not null,
product_size not null,
product_id not null
);
