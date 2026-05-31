-- Total records
SELECT COUNT(*) FROM analytics_customer;

-- Preview
SELECT * FROM analytics_customer LIMIT 10;

-- Check NULLs
SELECT
    COUNT(*) - COUNT(ext_source_1) AS ext1_missing,
    COUNT(*) - COUNT(ext_source_2) AS ext2_missing,
    COUNT(*) - COUNT(ext_source_3) AS ext3_missing
FROM analytics_customer;