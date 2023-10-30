-- 중복제거
-- select distinct 필드 from 테이블
SELECT count(distinct(NAME)) as count
from ANIMAL_INS
where NAME IS NOT NULL
