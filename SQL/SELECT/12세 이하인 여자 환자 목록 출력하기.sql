-- 배운점
-- ifnull함수로 null일 때 값을 쉽게 값을 변경할 수 있다.
-- ifnull(컬럼, null일때 바꾸고 싶은 값)

SELECT PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE') AS TLNO
from PATIENT
where GEND_CD = 'W' AND AGE <= 12
ORDER BY AGE DESC, PT_NAME

