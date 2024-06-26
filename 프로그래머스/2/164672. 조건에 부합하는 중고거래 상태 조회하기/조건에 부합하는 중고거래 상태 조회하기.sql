# 2022년 10월 5일
# 거래상태가 SALE = "판매중" , RESERVED = "예약중", DONE = "거래완료"
# 결과는 게시글ID 내림차순

SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
CASE STATUS
WHEN "SALE" THEN "판매중"
WHEN "RESERVED" THEN "예약중"
ELSE "거래완료"
END AS STATUS
FROM USED_GOODS_BOARD
WHERE CREATED_DATE LIKE "2022-10-05"
ORDER BY BOARD_ID DESC;