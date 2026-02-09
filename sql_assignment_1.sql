CREATE TABLE "user" (
  id INT  PRIMARY KEY,
  name VARCHAR(100) ,
  email VARCHAR(255),
  password_hash VARCHAR(255),
  otp INT
  );
 
--select * from "user";

create table order_table(
id INT primary key,
catogory varchar(100),
product_name varchar(100),
user_id int ,

 constraint fk_order foreign key (user_id) references "user"(id)
);



create table payment_sys(
id int primary key,
order_id int  ,
foreign key(order_id) references order_table(id),
amount int,
txn_number int
);

insert into "user" (id, name, email,password_hash ,otp)
values (101,'naiyar','naiyar@gmail.com','000',123),
(102,'imam','imam@gmail.com','001',124),
(103,'jauhar','jauhar@gmail.com','002',125),
(104,'rana','rana@gmail.com','003',126),
(105,'aftab','aftab@gmail.com','004',127);

INSERT INTO order_table (id, user_id, catogory, product_name)
VALUES 
    (1,101, 'Electronics', 'Laptop'),
    (2,102, 'Books', 'SQL Guide'),
    (3,103, 'Fashion', 'Sneakers'),
    (4,104, 'Home', 'Coffee Maker'),
    (5,105, 'Electronics', 'Smartphone');

INSERT INTO  payment_sys(id, order_id, amount, txn_number)
VALUES 
    (501,1, 55000, 9981),
    (502,2, 1200, 9982),
    (503,3, 4500, 9983),
    (504,4, 3000, 9984),
    (505,5, 25000, 9985);


select*from "user" ;
select*from order_table ;
select*from payment_sys;


UPDATE  public."user"
SET  "name" = 'abc'
WHERE id=102;



SELECT * FROM "user";


DELETE FROM payment_sys
WHERE id = 501;


CREATE TABLE category (
    id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO category (id, category_name)
VALUES 
     (1, 'Electronics'),
     (2, 'Books'),
     (3, 'Fashion'),
     (4, 'Home'),
     (5, 'Woods');


alter table order_table
add column category_id INT;

alter table  order_table
add foreign key (category_id) references category(id);

alter table order_table
drop column catogory;

SELECT * FROM order_table;