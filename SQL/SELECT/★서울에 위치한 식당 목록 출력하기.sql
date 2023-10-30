-- select에서 집계함수를 사용할때는 뭘 기준으로 할것인지 알려줘야해서 group by 사용해야 한다.
-- SELECT 절에서 집계 함수를 제외한 칼럼을 GROUP BY 절에 기술한다고 생각하면 된다.
SELECT a.REST_ID, a.REST_NAME, a.FOOD_TYPE, a.FAVORITES, a.ADDRESS,
ROUND(AVG(b.REVIEW_SCORE), 2) as SCORE
from REST_INFO a
JOIN REST_REVIEW b
on a.REST_ID = b.REST_ID
where a.ADDRESS like '서울%'
group by a.REST_ID, a.REST_NAME, a.FOOD_TYPE, a.FAVORITES, a.ADDRESS
order by SCORE desc, a.FAVORITES desc
