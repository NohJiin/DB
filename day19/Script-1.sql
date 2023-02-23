
CREATE USER c##hr IDENTIFIED BY hr

GRANT CONNECT, resource, dba TO c##hr


CREATE TABLE "C##HR"."BBS" 
   (	"no" VARCHAR2(100),
   		"title" VARCHAR2(100),
   		"content" VARCHAR2(100),
   		"writer"  VARCHAR2(100)
   )

-- 주석 : -- 스페이스바
-- 테이블명 + 항목명 + 항목에 들어가는 데이터타입