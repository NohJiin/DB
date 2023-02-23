CREATE TABLE member2 (
	id varchar2(100),
	pw varchar2(100),
	name varchar2(100),
	tel varchar2(100)
)

CREATE TABLE product2 (
	Product2_no varchar2(100),
	name varchar2(100),
	content varchar2(100),
	price number(20, 0)
)

CREATE TABLE "C##HR"."MEMBER3" 
   (	"ID" VARCHAR2(100), 
	"PW" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"TEL" VARCHAR2(100)
   )
   
INSERT INTO "member" VALUES ('park', '1234', 'park', '011')

INSERT INTO "member" VALUES ('apple', '1111', 'apple', '011')

INSERT INTO "member" VALUES ('ice', '2222', 'ice', '012')

INSERT INTO "member" VALUES ('melon', '3333', 'melon', '013')

SELECT * FROM "member" -- MEMBER  테이블로부터 모든 열(col)을 다 검색

SELECT id FROM "member" -- MEMBER  테이블로부터 id만 검색

SELECT id, pw FROM "member" -- MEMBER  테이블로부터 id와 pw만 검색