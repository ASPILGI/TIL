-- GROUP BY 절은 주로 집계 함수와 같이 사용한다.
-- HAVING 절은 GROUP BY 를 통해 데이터를 그룹핑 한 행에만 사용할 수 있다.
-- WHERE 절을 행들이 그룹 지어지기 전 단일 행들을 필터링하는 데 사용된다.
-- 반면, HAVING 절은 행들이 그룹 지어진 후의 행들을 필터링하는 데 사용된다.
-- => 그래서 쿼리문에서도 HAVING 절은 GROUP BY 절 뒤에 적혀 있다.
SELECT b.INGREDIENT_TYPE, sum(a.TOTAL_ORDER) as TOTAL_ORDER
from FIRST_HALF a
join ICECREAM_INFO b
on a.FLAVOR = b.FLAVOR
group by b.INGREDIENT_TYPE
order by TOTAL_ORDER
