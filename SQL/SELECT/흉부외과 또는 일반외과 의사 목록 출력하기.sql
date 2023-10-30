-- OR 구문
-- WHERE 칼럼 A OR B : 칼럼에서 A 혹은 B인 값 반환
SELECT DR_NAME, DR_ID, MCDP_CD, date_format(HIRE_YMD, '%Y-%m-%d') as HIRE_YMD 
from doctor
where mcdp_cd = 'CS' or mcdp_cd = 'gs' 
order by hire_ymd desc, dr_name


-- 참조 : OR 대신 IN
-- WHERE 칼럼 IN (A,B) : 칼럼에서 A,B중에서 일치하는 것이 있으면 반환
-- WHERE MCDP_CD IN('CS', 'GS')
