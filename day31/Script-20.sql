create table member (
	id varchar(100) primary key,
	pw varchar(100),
	name varchar(100),
	tel varchar(100)
)

create table bbs (
	no int(10) primary key,
	title varchar(100),
	content varchar(100),
	writer varchar(100)
)

insert into `member` values ('apple1','apple1','apple1','apple1')

insert into `member` values ('apple2','apple2','apple2','apple2')

insert into `member` values ('apple3','apple3','apple3','apple3')

select * from `member` m 

create table PRODUCT 
( 	ID VARCHAR(200), 
	NAME VARCHAR(200), 
	CONTENT VARCHAR(200), 
	PRICE int(10), 
	COMPANY VARCHAR(200), 
	IMG VARCHAR(200)
)

select * from product