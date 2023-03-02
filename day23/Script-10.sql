CREATE TABLE "HR"."BBS3" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	 CONSTRAINT "BBS_PK3" PRIMARY KEY ("no"),
	 CONSTRAINT "FK_MEMBER3" FOREIGN KEY ("WRITER")
	 REFERENCES "HR"."MEMBER" ("ID")
)

CREATE TABLE "HR"."BBS4" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
)

-- pk 제약조건 추가
ALTER TABLE HR.BBS4
ADD CONSTRAINT BBS4_PK PRIMARY KEY ("no")

-- fk제약조건 추가
ALTER TABLE HR.BBS4
ADD CONSTRAINT FK_MEMBER4
FOREIGN KEY (WRITER) REFERENCES HR.MEMBER2(ID);

-- 테이블 생성과 동시에 PK지정하기
CREATE TABLE "HR"."DEPART2" 
(	"id" VARCHAR2(100), 
	"name" VARCHAR2(100), 
	"instructor" VARCHAR2(100),
	CONSTRAINT "DEPART2_PK" PRIMARY KEY ("id")
)

-- 테이블 생성 이후에 PK지정하기
CREATE TABLE STUDENT2
(	id varchar2(100),
	name varchar2(100),
	tel varchar2(100),
	depart_id varchar2(100)
)
-- pk
ALTER TABLE HR.STUDENT2
ADD CONSTRAINT STUDENT2_PK PRIMARY KEY ("ID")

-- fk
ALTER TABLE HR.STUDENT2
ADD CONSTRAINT FK_MEMBER_S
FOREIGN KEY (DEPART_ID) REFERENCES HR.DEPART2("id")

-- table복사
CREATE TABLE MEMBER22
AS SELECT * FROM MEMBER2

INSERT INTO MEMBER22
VALUES ('banana4', 'banana4', 'banana4', 'banana4', sysdate, 'aaa')

SELECT * FROM MEMBER22

INSERT INTO BBS4
VALUES (bbs_id_seq.nextval, 'happy', 'happy day', 'ice')

INSERT INTO BBS4
VALUES (bbs_id_seq.nextval, 'happy2', 'happy day2', 'ice')

SELECT * FROM bbs4

CREATE SEQUENCE pd_id_seq
INCREMENT BY 1
START WITH 1

CREATE TABLE product2 
(	id NUMBER(38, 0),
	name varchar2(100)
)

INSERT INTO product2
VALUES (pd_id_seq.nextval, 'shoes')

SELECT * FROM product2

-- 문제
-- 1. orderlist3만들기 - id(number), title, price(number)
-- 2. sequence 만들기 - 이름 : or_seq, start값 : 1, increment값 : 1
-- 3. row 값 3개 이상 넣어보고 확인

CREATE TABLE orderlist3 
(	id number(38, 0),
	title varchar2(100),
	price number(38,0)
)

CREATE SEQUENCE or_seq
INCREMENT BY 1
START WITH 1

INSERT INTO orderlist3
VALUES (or_seq.nextval, 'apple', 10000)

INSERT INTO orderlist3
VALUES (or_seq.nextval, 'banana', 9000)

INSERT INTO orderlist3
VALUES (or_seq.nextval, 'kiwi', 6000)

INSERT INTO orderlist3
VALUES (or_seq.nextval, 'peach', 6000)

INSERT INTO orderlist3
VALUES (or_seq.nextval, 'melon', 6000)

SELECT * FROM orderlist3

-- 오름차순

SELECT * FROM orderlist3
ORDER BY ID

-- 내림차순

SELECT * FROM orderlist3
WHERE id <= 3
ORDER BY ID DESC

-- start랑 increment 순서가 바뀌어도 생성됨
CREATE SEQUENCE ex_seq
START WITH 1
INCREMENT BY 1