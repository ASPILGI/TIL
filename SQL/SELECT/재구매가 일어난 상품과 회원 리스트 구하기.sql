-- 동일한 회원이 동일한 상품을 재구매한 데이터를 구하여(?)
-- 1) '회원 ID'와 '상품 ID'을 각각 의미하는 'USER_ID', 'PRODUCT_ID' 컬럼을 기준으로 'GROUP BY'문을 이용하여 집계
-- 2) " GROUP BY {컬럼1}, {컬럼2} "
-- 3) " HAVING COUNT(*) > 1 "

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC
