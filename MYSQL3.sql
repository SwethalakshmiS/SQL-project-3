create database Booksdb;
create table Booksdb.Books(id int primary key auto_increment, book_title varchar(20), author varchar(20), genre varchar(20), publication_year int ,price int);
insert into Booksdb.Books values (1, "HAP" , "Ram" , "Biology" , 2002 , 7000),(2, "Python" , "Mani" , "Programing" , 2008 , 8000),(3, "Java" , "Raj" , "Programing" , 2020 , 4000),(4, "Physiology" , "Prakash" , "Biology" , 2034 , 3000),(7, "Probability" , "Salaivaganan" , "Maths" , 20054 , 5000);
create table Booksdb.Authors(id int primary key, Author varchar(20), Publication int);
insert into Booksdb.Authors values (5 , "Ravi" , 2005 ), (4 , "Varun" , 2134) , (6 , "Sasi" , 2004);
select book_title from BooksDB.Books;
update Booksdb.Books set price= 8800 where id=3;
delete from Booksdb.Books where  id=4;
select avg(price) from Booksdb.Books;
select *from Booksdb.Books;
select * from Booksdb.Authors;
use Booksdb;
select Books.id,Books.book_title,Books.author,Books.genre,Books.publication_year,Books.price, Authors.id
from Books 
inner join Authors
on Books.id=Authors.id;