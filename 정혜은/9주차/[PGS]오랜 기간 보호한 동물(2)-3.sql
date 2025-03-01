-- 코드를 입력하세요
SELECT A.ANIMAL_ID AS ANIMAL_ID, A.NAME AS NAME
FROM ANIMAL_INS A JOIN ANIMAL_OUTS O ON A.ANIMAL_ID = O.ANIMAL_ID
WHERE A.DATETIME AND O.DATETIME IS NOT NULL
ORDER BY DATEDIFF(O.DATETIME, A.DATETIME) DESC
LIMIT 2