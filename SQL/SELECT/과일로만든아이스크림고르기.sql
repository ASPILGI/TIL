-- 테이블을 약어로 할때 as 필수!
SELECT f.FLAVOR
from FIRST_HALF as f
inner join ICECREAM_INFO as i
on f.FLAVOR = i.FLAVOR
where f.TOTAL_ORDER > 3000 and i.INGREDIENT_TYPE = "fruit_based"
order by total_order desc
