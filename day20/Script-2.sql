SELECT * FROM BBS

SELECT title FROM BBS

CREATE TABLE product22 (
	id varchar2(100),	-- PRIMARY KEY 여기에 써도 된다
	name varchar2(100),
	content varchar2(100),
	price number(20,0)
)

INSERT INTO product22 VALUES ('no', 'jiin', 'car', 100)

INSERT INTO MEMBER VALUES ('100', '100', 'park', '011')

SELECT * FROM MEMBER
 
INSERT INTO MEMBER VALUES ('200', '200', 'park', '011')
 
SELECT * FROM MEMBER
 
INSERT INTO MEMBER VALUES ('300', '300', 'park', '011')
 
SELECT * FROM MEMBER
 
SELECT * FROM MEMBER WHERE id = '100' -- id가 100인 모든 컬럼
 
 -- 내가 입력한 순서대로 결과를 보여준다
SELECT name, id FROM MEMBER WHERE id = '100'

SELECT id, name FROM MEMBER WHERE id = '100'

 -- id를 아이디 로 보여달라고 한 것
SELECT id AS 아이디 FROM MEMBER WHERE id = '100'

SELECT tel FROM MEMBER WHERE name = 'park'

UPDATE MEMBER SET name = 'kim' WHERE id = '100'

UPDATE MEMBER SET name = 'yang' WHERE id = '200'

UPDATE MEMBER SET name = 'lee' WHERE id = '300'

SELECT * FROM MEMBER

UPDATE MEMBER SET pw = '8888' , tel = '9999' WHERE id = 'ice'

SELECT * FROM MEMBER

DELETE FROM MEMBER WHERE id = '100'

DELETE FROM MEMBER WHERE tel = '011'

SELECT * FROM MEMBER WHERE id = '200' AND tel = '011'

SELECT * FROM MEMBER WHERE id = '200' OR tel = '011'