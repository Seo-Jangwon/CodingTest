-- 코드를 입력하세요
WITH NEW_TABLE AS(
    SELECT I.ANIMAL_ID, I.NAME, TIMESTAMPDIFF(SECOND, I.DATETIME, O.DATETIME) AS TD
    FROM ANIMAL_INS AS I JOIN  ANIMAL_OUTS AS O 
    ON I.ANIMAL_ID = O.ANIMAL_ID
    ORDER BY TD DESC
    LIMIT 2
)

SELECT ANIMAL_ID, NAME
FROM NEW_TABLE