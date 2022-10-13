UPDATE OH_LABORATORY SET LAB_CREATED_DATE = LAB_DATE;
UPDATE OH_LABORATORY SET LAB_DATE = CAST(CONCAT(LAB_EXAM_DATE, ' ', TIME(LAB_DATE)) AS DATETIME);

ALTER TABLE OH_LABORATORY DROP COLUMN LAB_EXAM_DATE;