-- 평균 계산 -> AVG() 
-- 반올림 계산 -> ROUND() 

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
where CAR_TYPE like 'SUV'

