CREATE TABLE product(
	id varchar2(200),
	name varchar2(200),
	content varchar2(200),
	price varchar2(200),
	company varchar2(200),
	img varchar2(200)
)

-- SELECT * FROM product

SELECT * FROM MEMBER ORDER BY id -- 오름차순

SELECT * FROM MEMBER ORDER BY id DESC -- 내림차순

-- select, update, delete 정리 문제

SELECT * FROM product ORDER BY price DESC -- 1

SELECT name, content, price FROM product ORDER BY company -- 2

SELECT name, price FROM product WHERE id = '100' -- 3

SELECT name, company FROM PRODUCT WHERE price = '5000' -- 4

SELECT name, img FROM product WHERE id = '100' AND price = '1000' -- 5

SELECT company, name FROM product WHERE company = 'c100' -- 6

-- and 조건 조심히 사용 (같은 항목 내에서는 적용 불가)
SELECT name, price FROM product WHERE company = 'c100' OR company = 'c200' -- 7

UPDATE product SET content = '품절' WHERE price = '5000' -- 8

SELECT price, content FROM product WHERE price = '5000' -- 8 확인

UPDATE product SET img = '0.png', price = '10000' WHERE id = '100' OR id = '102' -- 9

SELECT img, price FROM product WHERE id = '100' OR id = '102' -- 9 확인

UPDATE product SET company = 'apple' , name = 'appleshoes' WHERE id = '101' -- 10

SELECT * FROM PRODUCT WHERE id = '101' -- 10 확인

DELETE FROM product WHERE name = 'shoes1' OR id = '107' -- 11

SELECT name, id FROM product WHERE name = 'shoes1' OR id = '107' -- 11 확인

DELETE FROM product WHERE company = 'c100' -- 12 (4개)

SELECT company FROM product -- 12 확인

DELETE FROM product -- 13 (5개)

SELECT * FROM product -- 13 확인

DROP TABLE product -- 14

SELECT * FROM product -- 14 확인 : 이제 TABLE 없음