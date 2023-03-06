INSERT INTO 영화관 VALUES ('서울', '합정점')

INSERT INTO 영화관 VALUES ('서울', '김포공항점')

INSERT INTO 영화관 VALUES ('부산', '해운대점')

INSERT INTO 영화관 VALUES ('부산', '서면점')

INSERT INTO 영화관 VALUES ('인천', '부평점')

INSERT INTO 영화관 VALUES ('인천', '부천점')

INSERT INTO 영화관 VALUES ('대구', '동성로점')

INSERT INTO 영화관 VALUES ('대구', '수성점')

SELECT * FROM 영화관

INSERT INTO 영화 VALUES ('애니메이션', '더 퍼스트 슬램덩크', '박정우', 001)

INSERT INTO 영화 VALUES ('드라마', '카운트', '양현준', 002)

INSERT INTO 영화 VALUES ('로맨스', '러브 로지', '노지인', 003)

INSERT INTO 영화 VALUES ('애니메이션', '스즈메의 문단속', '안정우', 004)

INSERT INTO 영화 VALUES ('애니메이션', '귀멸의 칼날', '현유나', 005)

SELECT * FROM 영화

INSERT INTO 예매하기 VALUES ('합정점', 2, '카카오페이', 003, 123)

INSERT INTO 예매하기 VALUES ('서면점', 4, '신용카드', 005, 456)

INSERT INTO 예매하기 VALUES ('부평점', 1, '스즈메의 문단속', 004, 789)

INSERT INTO 예매하기 VALUES ('동성로점', 2, '현금', 002, 999)

INSERT INTO 예매하기 VALUES ('해운대점', 3, '체크카드', 001, 777)

SELECT * FROM 예매하기

-- Inner join
SELECT *
FROM 예매하기 b, 영화관 c
WHERE b.영화관 = c.지점

SELECT *
FROM 예매하기 b, 영화 m
WHERE b.영화코드 = m.영화코드

-- OUTER join
SELECT b.영화관, b.인원, c.지역, c.지점
FROM 예매하기 b
LEFT OUTER JOIN 영화관 c
ON (b.영화관 = c.지점)

SELECT b.영화코드, b.결제수단, c.지역, c.지점
FROM 예매하기 b
LEFT OUTER JOIN 영화관 c
ON (b.영화관 = c.지점)

INSERT INTO MEMBER2
VALUES ('com', 'com', 'com', 'com')

UPDATE MEMBER2 SET tel = '999'
WHERE id = 'com'

DELETE FROM MEMBER2 m 
WHERE id = 'com'

SELECT * FROM MEMBER2 m