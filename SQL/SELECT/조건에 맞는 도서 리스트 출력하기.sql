-- DATE_FORMAT(날짜 , 형식) : 날짜를 지정한 형식으로 출력 => SELECT DATE_FORMAT(NOW(),'%Y-%m-%d') AS 컬럼명 FROM 테이블명
-- YEAR() : 날짜, 시간과 관련된 함수 중 하나 => SELECT YEAR(NOW()) FROM 테이블명

SELECT BOOK_ID, date_format(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from book
where category like '인문' and PUBLISHED_DATE like '2021%'
order by PUBLISHED_DATE

-- 참조
SELECT BOOK_ID, 
DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE CATEGORY = '인문' AND YEAR(PUBLISHED_DATE) = 2021
ORDER BY PUBLISHED_DATE;
