-- SQL NOT
-- 1) WHERE NOT A = 'X'
-- 2) WHERE A IN ('X', 'Y')
SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where not INTAKE_CONDITION = 'aged'
order by ANIMAL_ID
