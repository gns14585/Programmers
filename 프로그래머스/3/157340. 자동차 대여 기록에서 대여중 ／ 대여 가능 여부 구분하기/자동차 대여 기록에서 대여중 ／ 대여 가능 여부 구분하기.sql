# 2022녀 10월 16일 건만 조회 
# 대여중인 자동차를 "대여중" 이라고 표시
# "대여중"이 아닌 값은 "대여 가능" 이라고 표시
# 위 컬럼명을 "AVAILABILITY"
# 반납날짜가 2022년 10월 16일인 경우에도 "대여중" 으로 표시
# 결과는 CAR_ID 내림차순 DESC

SELECT CAR_ID, MAX(
    CASE
    WHEN "2022-10-16" BETWEEN START_DATE AND END_DATE THEN "대여중"
    ELSE "대여 가능"
    END) AS "AVAILABILITY"
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC