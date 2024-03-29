-- where부분 중요
SELECT a.TITLE, a.BOARD_ID, b.REPLY_ID, b.WRITER_ID, b.CONTENTS, 
date_format(b.CREATED_DATE, '%Y-%m-%d') as CREATED_DATE
from USED_GOODS_BOARD as a
join USED_GOODS_REPLY as b
on a.BOARD_ID = b.BOARD_ID
where a.CREATED_DATE like '2022-10%'
order by b.CREATED_DATE, a.TITLE


-- 참조 
-- WHERE SUBSTR(a.CREATED_DATE,1,7) = '2022-10'
-- WHERE DATE_FORMAT(a.CREATED_DATE, '%Y-%m') = '2022-10'
-- WHERE a.CREATED_DATE BETWEEN ('2022-10-01') AND ('2022-10-31')
