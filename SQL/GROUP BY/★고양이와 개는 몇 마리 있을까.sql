-- ORDER BY FIELD(필드명, 값1, 값2, 값3)
-- 필드명에 해당하는 순서로 정렬하되, 값1, 값2, 값3 순으로 정렬합니다.
SELECT ANIMAL_TYPE, count(*) AS count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE LIKE 'Cat' OR ANIMAL_TYPE LIKE 'Dog'
group by ANIMAL_TYPE
order by field(ANIMAL_TYPE, 'Cat', 'Dog')


-- 참조
-- WHERE ANIMAL_TYPE IN ('Cat', 'Dog') 사용가능
-- => 테이블에 있는 값에 하나씩만 들어있기 때문에
