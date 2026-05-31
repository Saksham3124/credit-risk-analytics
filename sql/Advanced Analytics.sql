/* =========================================================
   1. Top Overdur Customers
   ========================================================= */

SELECT
    sk_id_curr,
    total_overdue
FROM analytics_customer
ORDER BY total_overdue DESC
LIMIT 20;

/* =========================================================
   2. Top Defaulters by Debt
   ========================================================= */

SELECT
    sk_id_curr,
    total_debt,
    total_overdue
FROM analytics_customer
WHERE target = 1
ORDER BY total_debt DESC
LIMIT 20;

/* =========================================================
   3. Credit-to-Income Ratio
   ========================================================= */

SELECT
    sk_id_curr,
    ROUND(amt_income_total::numeric,2) AS income,
    ROUND(amt_credit::numeric,2) AS credit,
    ROUND(
        (amt_credit / amt_income_total)::numeric,
        2
    ) AS credit_income_ratio
FROM analytics_customer
ORDER BY credit_income_ratio DESC
LIMIT 20;

/* =========================================================
   4. Payment Burden Ratio
   ========================================================= */

SELECT
    sk_id_curr,
    ROUND(
        (amt_annuity / amt_income_total)::numeric,
        4
    ) AS payment_income_ratio
FROM analytics_customer
ORDER BY payment_income_ratio DESC
LIMIT 20;
/* =========================================================
   5. Risk Categories
   ========================================================= */

SELECT
    CASE
        WHEN total_overdue = 0 THEN 'Low Risk'
        WHEN total_overdue < 10000 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_category,
    COUNT(*) AS customers
FROM analytics_customer
GROUP BY risk_category;
/* =========================================================
   6. Top Credit Customers
   ========================================================= */

SELECT
    sk_id_curr,
    amt_credit
FROM analytics_customer
ORDER BY amt_credit DESC
LIMIT 20;

/* =========================================================
   7. Top Income Customers
   ========================================================= */
SELECT
    sk_id_curr,
    amt_income_total
FROM analytics_customer
ORDER BY amt_income_total DESC
LIMIT 20;
