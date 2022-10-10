-- 문자형 함수
-- 종류: LOWER, UPPER, SUBSTR, LENGTH, LTRIM, RTRIM, TRIM ,ASCII, CONCAT
-- CONCAT(문자열1, 문자열2): 문자열 1, 2를 합친다.
SELECT CONCAT('문자열', '1') FROM DUAL;

--SUBSTR(문자열, A, B): 문자열 3번부터 2개의 문자를 자른다.
SELECT SUBSTR('코카콜라맛있다', 3, 2) FROM DUAL;

--TRIM(): 문자열에서 문자열 시작 또는 끝 부분을 제거한다. 제거문자열이 없으면 공백이 제거된다.
SELECT TRIM('순대국밥 말고 돼지국밥') FROM DUAL;

-- 숫자형 함수
-- 종류 : ABS, MOD, ROUND, TRUNC, SIGN, CHAR, CEIL, FLOOR, EXP, LOG, LN, POWER,SIN, COS, TAN

--절대값
SELECT ABS(-10)FROM DUAL;

--양의 정수(1), 숫자 0, 음의정수(-1)판단
SELECT SIGN(-234), SIGN(0) SIGN(123) FROM DUAL;

--나머지(% 모듈러스)
SELECT MOD(10, 3) FROM DUAL;

--값보다 큰 최근접 정수
SELECT CEIL(3.14), CEIL(-3.14) FROM DUAL;

--값보다 작은 최근접 정수
SELECT FLOOR(3.14), FLOOR(-3.14) FROM DUAL;

--반올림 (정수타입으로 반환)
SELECT ROUND(3.55875987) FROM DUAL; -- 정수타입으로 출력
SELECT ROUND(3.55875987 1) FROM DUAL; -- 소수점 1자리까지 출력

--버림
SELECT TRUNC(3.9) FROM DUAL;

-- 날짜형 함수
-- 종류: SYSDATE, EXTRACT, TO_NUMBER(TO_CHAR(YYYY, MM, DD) / YEAR, MONTH, DAY)

--현재 날짜 출력
SELECT SYSDATE FROM DUAL;

-- 변환형 함수
-- TO_NUMBER, TO_CHAR, TO_DATE, CONVERT, CAST

-- 문자열을 숫자로 변환
SELECT TO_NUMBER('123') FROM DUAL; 

-- CAST, CONVERT: 표현을 목표 데이터 유형으로 변환한다.

-- NULL
-- NVL, NVL2, NULLIF, COALESCE, ISNULL

--NVL, NVL2
-- NVL 함수는 값이 NULL인 경우 지정값을 출력하고, NULL이 아니면 원래 값을 그대로 출력한다.
-- NVL("값", "지정값") 

-- NVL2 함수는 NULL이 아닌 경우 지정값1을  출력하고, NULL인 경우 지정값2를 출력한다.
-- NVL2("값", "지정값1", "지정값2") // NVL2("값", "NOT NULL", "NULL") 