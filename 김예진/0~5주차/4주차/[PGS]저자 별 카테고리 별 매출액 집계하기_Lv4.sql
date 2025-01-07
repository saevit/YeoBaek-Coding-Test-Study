SELECT AUTHOR.AUTHOR_ID
    , AUTHOR.AUTHOR_NAME
    , BOOK.CATEGORY
    , SUM(BOOK.PRICE * SUM_SALES) AS TOTAL_SALES -- 카테고리 내 도서들의 매출액 총합 
FROM BOOK
JOIN (
    -- 해당 기간 내 BOOK_ID 별 판매량
    SELECT BOOK_ID
        , SUM(SALES) AS SUM_SALES
    FROM BOOK_SALES
    WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 01
    GROUP BY BOOK_ID
) SUM_SALES -- BOOK_ID로 조인
    ON BOOK.BOOK_ID = SUM_SALES.BOOK_ID
JOIN AUTHOR -- AUTHOR_ID로 조인
    ON AUTHOR.AUTHOR_ID = BOOK.AUTHOR_ID
GROUP BY AUTHOR.AUTHOR_ID, BOOK.CATEGORY -- 작가 ID, 책 카테고리로 그룹화
ORDER BY AUTHOR.AUTHOR_ID, BOOK.CATEGORY DESC