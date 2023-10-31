-- WHERE NOT NULL 구문
-- EX) WHERE NOT A IS NULL
SELECT NAME, count(*) AS COUNT
from ANIMAL_INS
where NOT NAME IS NULL
group by NAME
having count(NAME) >= 2
order by NAME
