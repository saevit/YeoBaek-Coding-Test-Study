-- 코드를 작성해주세요
SELECT count(*) as COUNT FROM ECOLI_DATA
WHERE GENOTYPE & 2 != 2 -- 10
AND (GENOTYPE & 1 = 1   -- 1
OR GENOTYPE & 4 = 4)    -- 100