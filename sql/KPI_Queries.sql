SELECT
    COUNT(*) AS total_customers,
    SUM(target) AS total_defaulters,
    ROUND(100.0 * SUM(target) / COUNT(*),2) AS default_rate,
    ROUND(AVG(amt_income_total)::numeric,2) AS avg_income,
    ROUND(AVG(amt_credit)::numeric,2) AS avg_credit,
    ROUND(AVG(age_years)::numeric,2) AS avg_age
FROM analytics_customer;