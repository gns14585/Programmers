# 잡은 물고기수 컬렴명은 FISH_COUNT
# 결과는 월을 기준으로 오름차순
# 월은 숫자형태 1~12로 출력, 9 이하의 숫자는 1자리로만 출력
# 잡은 물고기가 없는 월은 출력하지 않음
SELECT COUNT(FISH_TYPE) AS FISH_COUNT , MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH
HAVING FISH_COUNT IS NOT NULL
ORDER BY MONTH