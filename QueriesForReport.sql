CREATE TABLE REPORT1 AS SELECT t.YEAR, l.CAREHOME_LOCATION, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO;

CREATE TABLE REPORT2 AS SELECT t.YEAR, l.CAREHOME_LOCATION, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO
WHERE l.CAREHOME_LOCATION = 'Leeds';

CREATE TABLE REPORT3 AS SELECT t.YEAR, l.CARE_CENTRE_NAME, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO;

CREATE TABLE REPORT4 AS SELECT t.YEAR, l.CARE_CENTRE_NAME, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO
WHERE t.YEAR = '2023';

CREATE TABLE REPORT5 AS SELECT t.YEAR, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO;

CREATE TABLE REPORT6 AS SELECT t.YEAR, l.CARE_CENTRE_NAME, f.NO_OF_ADMISSIONS 
FROM CAREHOME_ADMISSION_FACT f
JOIN CAREHOME_TIME_DIM t ON t.TIME_ID = f.FK1_TIME_ID 
JOIN CAREHOME_LOCATION_DIM l ON l.CAREHOME_NO = f.FK2_CAREHOME_NO
WHERE l.CARE_CENTRE_NAME = 'ALTORN CareHome';
