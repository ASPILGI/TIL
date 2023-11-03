-- TYPE이 DATETIME인 데이터에서 시간만 추출하려면 HOUR을 사용합니다.
-- HAVING 조건절의 예시) HAVING column_name >= 9 AND column_name <= 19;
SELECT HOUR(DATETIME) AS HOUR, COUNT(DATETIME) AS COUNT
from ANIMAL_OUTS
group by HOUR
HAVING HOUR >= 9 AND HOUR <=19
order by hour
