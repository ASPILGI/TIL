SELECT MCDP_CD AS '진료과 코드', count(*) AS '5월예약건수'
FROM APPOINTMENT
where date_format(APNT_YMD, '%Y-%m') like '2022-05'
group by MCDP_CD
order by count(MCDP_CD), MCDP_CD


-- 참조
-- 1) date_format 함수를 DATE_FORMAT 으로 수정하여야 한다.
-- => SQL에서 대소문자를 구분하기 때문에 대문자로 함수 이름을 작성해야 한다
-- 2) LIKE를 `=`로 수정하여 정확한 날짜 일치를 확인하도록 하여야한다.
-- => =를 사용하면 2022-05와 정확히 일치하는 결과를 가져온다
-- 3) ORDER BY 절에서 count(MCDP_CD)를 '5월예약건수'로 수정하여야한다.
-- => ORDER BY는 열의 별칭을 사용할 수 있으며, 열 별칭을 사용하는 것이 결과를 더 명확하게 만든다
