-- 비교 연산자
-- 1) where A >= 30 and A <= 40
-- 2) where between 30 and 40
SELECT count(*) as USERS
from USER_INFO
where substr(JOINED, 1, 4) = '2021' and age >= 20 and age <=29

-- 참조
-- 1) substr함수를 사용해서 비교도 가능!
-- 2) YEAR함수를 사용하여 비교도 가능!
-- ex) YEAR(JOINED) = 2021
