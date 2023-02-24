CREATE TABLE "HR"."NOTICE" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )
   
   CREATE TABLE recomend (
   	re_no number(38,0),
   	title varchar2(100),
   	content varchar2(100),
   	writer varchar2(100)
   )
   
   DROP TABLE RECOMEND -- table을 통째로 던져버림(삭제)
   
    CREATE TABLE recomend (
   	re_no number(38,0),
   	title varchar2(100),
   	content varchar2(100),
   	writer varchar2(100)
   )
   
ALTER TABLE HR.RECOMEND MODIFY TITLE VARCHAR2(300);

ALTER TABLE HR.RECOMEND MODIFY CONTENT VARCHAR2(300);

ALTER TABLE HR.RECOMEND MODIFY WRITER VARCHAR2(300);

CREATE TABLE "HR"."BOARD3" 
   (	"BOARDNO" NUMBER(38,0), 
	"TITLE" VARCHAR2(100), 
	"CONTENTS" VARCHAR2(100), 
	"WRITER" VARCHAR2(100), 
	"WRITEDATE" DATE, 
	"RECOMEND" NUMBER(38,0), 
	"VIEWCOUNT" NUMBER(38,0)
   )

ALTER TABLE board3 MODIFY writer varchar2(200)

ALTER TABLE board3 DROP COLUMN viewcount

ALTER TABLE board3 ADD test2 varchar2(100)

DROP TABLE board3

-- DROP TABLE bbs2

-- DCL : DB 관리/제어해주는 문법(계정생성, 계정 권한부여, 백업, 복구)

-- 117p 일반 유저 계정 만들기
CREATE USER apple IDENTIFIED BY a1234

GRANT CONNECT, resource, dba TO apple