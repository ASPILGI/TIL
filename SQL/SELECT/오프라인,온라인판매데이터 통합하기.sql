-- IF문 문법(?)
-- 1) UNION / UNION ALL -> 테이블의 열의개수가 똑같아야지만 UNION ALL 사용할 수 있다.
-- 2) DATE_FORMAT
-- 3) WHERE MONTH -> SALES_DATE 열의 날짜 값을 기반으로 특정 월의 레코드를 필터링하는 정확하고 권장되는 방법입니다.

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE MONTH(SALES_DATE) = 3

UNION

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE MONTH(SALES_DATE) = 3

ORDER BY SALES_DATE, PRODUCT_ID, USER_ID
