-- 코드를 입력하세요
SELECT AO.ANIMAL_ID, AO.NAME
FROM ANIMAL_INS AI JOIN ANIMAL_OUTS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE DATEDIFF(AI.DATETIME, AO.DATETIME)
ORDER BY DATEDIFF(AI.DATETIME, AO.DATETIME)
LIMIT 2