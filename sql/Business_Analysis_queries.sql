/* =========================================================
   1. Default Distribution
   ========================================================= */

SELECT
    target,
    COUNT(*) AS customers
FROM analytics_customer
GROUP BY target;

/* =========================================================
   2. Gender Analysis
   ========================================================= */
  
SELECT
    code_gender,
    COUNT(*) AS customers,
    SUM(target) AS defaulters,
    ROUND(
        100.0 * SUM(target) / COUNT(*),
        2
    ) AS default_rate
FROM analytics_customer
GROUP BY code_gender;

/* =========================================================
   3. Age Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(age_years)::numeric,2) AS avg_age
FROM analytics_customer
GROUP BY target;

/* =========================================================
   4. Age Buckets
   ========================================================= */

SELECT
    CASE
        WHEN age_years < 30 THEN 'Under 30'
        WHEN age_years < 40 THEN '30-39'
        WHEN age_years < 50 THEN '40-49'
        WHEN age_years < 60 THEN '50-59'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS customers,
    SUM(target) AS defaulters
FROM analytics_customer
GROUP BY age_group
ORDER BY age_group;

/* =========================================================
   5. Income Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(amt_income_total)::numeric,2) AS avg_income
FROM analytics_customer
GROUP BY target;

/* =========================================================
   6. Credit Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(amt_credit)::numeric,2) AS avg_credit
FROM analytics_customer
GROUP BY target;

/* =========================================================
   7. Annuity Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(amt_annuity)::numeric,2) AS avg_annuity
FROM analytics_customer
GROUP BY target;

/* =========================================================
   8. External Scores
   ========================================================= */

SELECT
    target,
    ROUND(AVG(ext_source_1)::numeric,4) AS ext1,
    ROUND(AVG(ext_source_2)::numeric,4) AS ext2,
    ROUND(AVG(ext_source_3)::numeric,4) AS ext3
FROM analytics_customer
GROUP BY target;

/* =========================================================
   9. Bureau History Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(total_bureau_records)::numeric,2) AS avg_records,
    ROUND(AVG(total_credit_sum)::numeric,2) AS avg_credit_sum,
    ROUND(AVG(total_overdue)::numeric,2) AS avg_overdue
FROM analytics_customer
GROUP BY target;

/* =========================================================
   10. Previous Application Analysis
   ========================================================= */

SELECT
    target,
    ROUND(AVG(total_previous_apps)::numeric,2) AS avg_previous_apps
FROM analytics_customer
GROUP BY target;