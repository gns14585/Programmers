# 보호소에 들어온 동물 중 이름이 Lucy, Ella, Pickle, Rogan, sabrina, Mitty 인 동물
# ANIMAL_ID, NAME, SEX_UPON_INTAKE 조회목록

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME = "Lucy" OR NAME = "Ella" OR NAME = "Pickle" OR NAME = "Rogan" OR NAME = "sabrina" OR NAME = "Mitty"
ORDER BY ANIMAL_ID