CREATE TABLE depart (
	id varchar2(100),
	name varchar2(100),
	instructor varchar2(100)
)

CREATE TABLE student (
	id varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	depart_id varchar2(100)
)

CREATE TABLE subject (
	id varchar2(100),
	title varchar2(100),
	depart_id varchar2(100)
)

SELECT * FROM DEPART d

SELECT * FROM STUDENT s

SELECT * FROM SUBJECT s
