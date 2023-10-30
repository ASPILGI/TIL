-- 1) 날짜는 포맷 항상 확인!
-- 2) where 조건문 꼼꼼히
-- 3) NULL인 조건문은 A IS NULL / A IS NOT NULL
SELECT MEMBER_ID, MEMBER_NAME, GENDER, DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') as DATE_OF_BIRTH
from MEMBER_PROFILE
where MONTH(DATE_OF_BIRTH) = 03 and GENDER = "W" and TLNO IS not NULL
order by MEMBER_ID
