-- 1) CASE WHEN
-- 2) TRUNCATE(숫자, 버릴 자릿수)
SELECT (
        CASE
            WHEN PRICE < 10000 THEN 0
            ELSE TRUNCATE(PRICE, -4)
            END) AS PRICE_GROUP, COUNT(*) AS PRODUCTS
FROM PRODUCT
group by PRICE_GROUP
order by PRICE_GROUP 


-- 참조
-- TRUNCATE(PRICE, -4)를 하면 5자리 즉 만원대는 몇 만인지만 남게되는데 5자리 밑에 수는 0으로 되기 때문에 CASE필요X
-- SELECT TRUNCATE(PRICE, -4) PRICE_GROUP, COUNT(*) AS PRODUCTS
