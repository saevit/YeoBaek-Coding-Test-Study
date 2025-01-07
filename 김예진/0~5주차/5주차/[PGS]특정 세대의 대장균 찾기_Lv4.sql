SELECT ID
FROM ECOLI_DATA
WHERE PARENT_ID IN (
    -- GEN 2
    (SELECT ID 
     FROM ECOLI_DATA
     WHERE PARENT_ID IN (
         -- GEN 1
         SELECT ID
         FROM ECOLI_DATA
         WHERE PARENT_ID IS NULL)))