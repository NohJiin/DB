SELECT CONCAT(empno, ':') AS concat_result FROM EMP

SELECT LENGTH(ename) FROM EMP

SELECT LENGTH(trim(ename)) FROM EMP

SELECT * FROM EMP

SELECT TRIM(BOTH 'a' FROM ename) FROM EMP -- 양쪽 끝에 A를 제거

SELECT TRIM(LEADING 'a' FROM ename) FROM EMP -- 앞쪽에 A를 제거

SELECT TRIM(TRAILING 'a' FROM ename) FROM EMP --뒷쪽에 A를 제거

SELECT REPLACE(ename, ' ', '') FROM EMP

-- NVL보다 이렇게 바꾸는 것을 선호
UPDATE emp
SET COMM = 0
WHERE COMM IS NULL

SELECT * FROM EMP

SELECT sal + comm AS total
FROM emp

-- 문자함수, 숫자함수 정리

SELECT LENGTH(ename) FROM EMP -- 1

SELECT job, LENGTH(ename) FROM EMP
WHERE job = 'MANAGER' -- 2

SELECT ename, job FROM EMP
WHERE comm IS NULL -- 3 (0개)

SELECT HIREDATE FROM EMP
WHERE comm IS NOT NULL -- 4

SELECT SUBSTR(ename, 2) FROM EMP -- 5

SELECT SUBSTR(job, 1, 3) FROM EMP -- 6

SELECT ename, REPLACE(ename, 'K', 'P') FROM EMP -- 7

-- 8
SELECT EMPNO || '번은 ' || ename || '입니다' FROM EMP

-- 9
SELECT hiredate, TO_CHAR(HIREDATE, 'mm') AS mm, TO_CHAR(HIREDATE, 'day') AS DAY
FROM emp

-- 10
SELECT job,
CASE JOB
	WHEN 'MANAGER' THEN 'level1'
	WHEN 'SALESMAN' THEN 'level2'
	ELSE 'level3'
END AS LEVEL_result
FROM EMP

SELECT * FROM EMP

-- 집계함수

SELECT count(*) FROM EMP

SELECT count(SAL)
FROM EMP

SELECT count(SAL)
FROM EMP
WHERE job = 'SALESMAN'

SELECT count(SAL), SUM(SAL), AVG(SAL), MIN(SAL), MAX(SAL)  
FROM EMP
WHERE job = 'SALESMAN'

SELECT job, count(SAL), SUM(SAL), ROUND(AVG(SAL)), MIN(SAL), MAX(SAL)  
FROM EMP
GROUP BY job

SELECT job, count(SAL), SUM(SAL), ROUND(AVG(SAL)), MIN(SAL), MAX(SAL)  
FROM EMP
GROUP BY job
ORDER BY job

SELECT job, count(SAL), SUM(SAL), ROUND(AVG(SAL)), MIN(SAL), MAX(SAL)  
FROM EMP
GROUP BY job
HAVING COUNT(SAL) >= 4 -- 그룹을 지어서 검색후, 필터링을 하고자 하는 경우
ORDER BY job -- 이미 모든 검색이 다 끝난 후, 그 결과를 정렬하고자 하는 경우, 맨 끝

-- 집계/그룹함수 정리 문제

SELECT count(*) FROM EMP -- 1

SELECT count(*) FROM EMP e 
WHERE DEPTNO = 20 OR MGR <= 7700 -- 2(10)

SELECT MIN(SAL)  FROM EMP e 
WHERE DEPTNO = 10 OR DEPTNO = 20 -- 3(1)

SELECT MIN(SAL), MAX(SAL), SUM(SAL) FROM EMP e -- 4

SELECT DEPTNO, round(AVG(sal)) FROM EMP
GROUP BY DEPTNO -- 5

SELECT DEPTNO, SUM(SAL)  FROM EMP
GROUP BY DEPTNO -- 6

SELECT DEPTNO, round(AVG(sal)) FROM EMP
GROUP BY DEPTNO
HAVING round(AVG(sal)) >= 2000
ORDER BY DEPTNO DESC -- 7

SELECT count(*), round(AVG(sal)) FROM EMP
WHERE job = 'MANAGER' -- 8

SELECT COUNT(*) FROM EMP
WHERE ename LIKE '%S%' -- 9

SELECT COUNT(*) FROM EMP
WHERE sal >= 3000 AND comm IS NOT NULL -- 10

SELECT * FROM EMP
WHERE sal >= 3000 AND comm IS NOT NULL
ORDER BY SAL DESC -- 10

-- join : 검색을 하고 싶은데 항목들이 여러개의 테이블에 흩어져 있는 경우
--		  테이블을 모아서(합해서) 검색

SELECT *
FROM MEMBER2 m, BBS4 b
WHERE m.ID = b.WRITER

-- 원하는것만 추출

SELECT b."no" , title, NAME
FROM MEMBER2 m, BBS4 b
WHERE m.ID = b.WRITER

-- Inner join : 테이블간 공통된 값만 추출
-- emp 테이블과 dept테이블을 조인
-- 하나의 컬럼이상이 동일한 컬럼이 있어야함
-- empno, ename, job, deptno, loc 컬럼 검색
-- 조인조건 : deptno

SELECT * FROM emp

SELECT * FROM dept

SELECT e.EMPNO, e.ENAME, e.JOB, d.DEPTNO, d.LOC
FROM dept d, emp e
WHERE d.DEPTNO = e.DEPTNO

SELECT *
FROM MEMBER2 m
LEFT OUTER JOIN BBS4 b
ON (m.ID = b.WRITER)

SELECT *
FROM MEMBER2 m  
RIGHT OUTER JOIN BBS b 
on (m.ID = b.WRITER)

-- left/right outer JOIN 
-- 1. emp 테이블의 정보는 다 보이게 하고 싶음. dept는 맞는 것만 왼쪽에 붙여주고 싶음

SELECT *
FROM EMP e 
LEFT OUTER JOIN DEPT d 
ON (e.DEPTNO = d.DEPTNO)

-- 2. dept 테이블의 정보는 다 보이게 하고 싶음. emp는 맞는 것만 오른쪽에 붙여주고 싶음
SELECT *
FROM EMP e 
RIGHT OUTER JOIN DEPT d 
ON (e.DEPTNO = d.DEPTNO)

-- 조인 확인 문제
-- INNER JOIN ==> MEMBER2의 ID랑 BBS4의 WRIGHT가 동일한 것만 검색한다
SELECT *
FROM BBS4 b, MEMBER2 m
WHERE b.WRITER = m.ID

-- OUTER JOIN
-- (LEFT) ==> bbs만 다 보이게하고 member를 맞는것만 붙이기
SELECT *
FROM BBS4 b
LEFT OUTER JOIN MEMBER2 m
ON (b.WRITER = m.ID)

SELECT m.ID, m.NAME, b.TITLE, b.CONTENT
FROM BBS4 b
LEFT OUTER JOIN MEMBER2 m
ON (b.WRITER = m.ID)

-- (RIGHT) ==> member만 다 보이게하고 bbs를 맞는것만 붙이기
SELECT *
FROM BBS4 b
RIGHT OUTER JOIN MEMBER2 m
ON (b.WRITER = m.ID)

SELECT m.ID, m.NAME, b.TITLE, b.CONTENT
FROM BBS4 b
RIGHT OUTER JOIN MEMBER2 m
ON (b.WRITER = m.ID)

CREATE TABLE company (
	id varchar2(200) PRIMARY key,
	name varchar2(200),
	addr varchar2(200),
	tel varchar2(200)
)

INSERT INTO COMPANY VALUES ('c100', 'good', 'seoul', '011')

INSERT INTO COMPANY VALUES ('c200', 'joa', 'busan', '012')

INSERT INTO COMPANY VALUES ('c300', 'maria', 'ulsan', '013')

INSERT INTO COMPANY VALUES ('c400', 'my', 'kwangju', '014')

SELECT * FROM COMPANY

-- COMPANY, PRODUCT
SELECT *
FROM COMPANY c, PRODUCT p
WHERE c.ID = p.COMPANY

-- (left)company에 덧붙이기
SELECT p.COMPANY, p.NAME, c.NAME, c.ADDR
FROM COMPANY c
LEFT OUTER JOIN PRODUCT p
ON (c.ID = p.COMPANY)

-- (right)product에 덧붙이기
SELECT p.COMPANY, p.NAME, c.NAME, c.ADDR
FROM COMPANY c
RIGHT OUTER JOIN PRODUCT p
ON (c.ID = p.COMPANY)