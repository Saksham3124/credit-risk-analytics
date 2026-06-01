# Credit Risk Analytics

An end-to-end credit risk analysis project identifying default patterns across 307,511 loan applicants using Python, PostgreSQL, and SQL — visualized through an interactive Tableau dashboard.

**[Live Tableau Dashboard →](https://public.tableau.com/app/profile/kumar.saksham2703/viz/CreditRiskAnalysis_17802306468670/CreditRiskAnalyticsDashboard?publish=yes)**

![Dashboard Preview](Dashboard.png)

---

## 🔍 Business Problem 

Credit default is one of the biggest risks for financial institutions. Identifying which customer segments are most likely to default — and why — enables better lending decisions and risk management.

This project analyzes real-world home credit data to uncover default patterns across demographics, income levels, age groups, and bureau activity.

---

## 📊 Key Findings

| Metric | Value |
|--------|-------|
| Total Customers Analyzed | 307,511 |
| Overall Default Rate | 8.07% |
| Highest Risk Segment | Under 30 — 11.47% |
| Lowest Risk Segment | 60+ — 4.92% |
| Male Default Rate | 10.14% |
| Female Default Rate | 7.00% |
| Default Rate — 41+ Bureau Records | 13.64% |
| Default Rate — 0–10 Bureau Records | 8.06% |
| Males default vs females | 45% higher rate |
| High bureau activity vs low | 1.7x default rate |

---

## Project Architecture

**Raw Data** — Kaggle (Home Credit Default Risk)

**Python / Pandas** — Data cleaning, feature engineering, EDA, CSV export

**PostgreSQL / pgAdmin** — Data storage, SQL business analysis, KPI generation

**Tableau Public** — Interactive dashboard and visualizations

---

## SQL Analysis

Business questions answered using PostgreSQL across 307,511 customer records:

**KPI Generation**
- Overall default rate, average income, average credit amount, average age across full dataset

**Demographic Analysis**
- Default rate by gender — males (10.14%) vs females (7.00%)
- Default rate by age bucket — Under 30 highest risk at 11.47%, decreasing steadily to 4.92% for 60+

**Credit Behavior Analysis**
- Average credit amount and annuity payment by default status
- Credit-to-income ratio — identifying over-leveraged customers
- Payment burden ratio — annuity as percentage of income

**Bureau Risk Analysis**
- Average bureau records, total credit sum, and overdue amount by default status
- Risk categorization — Low / Medium / High based on overdue amount
- Default rate correlation with bureau activity levels (0-10 vs 41+ records)

**Advanced Risk Scoring**
- Top 20 customers ranked by overdue amount
- Top defaulters ranked by total debt exposure
- External credit score analysis (EXT_SOURCE_1, 2, 3) by default status

---

## Analysis Layers

**Demographics**
- Younger customers under 30 are highest risk despite having less credit history
- Males default at 45% higher rate than females
- Default risk decreases steadily and predictably with age

**Bureau Records**
- Strong positive correlation between bureau activity and default rate
- Customers with 41+ bureau records default at 1.7x the rate of low-activity customers
- High bureau record count is the strongest demographic risk signal in this dataset

**Income Distribution**
- Majority of customers earn between ₹1,00,000 – ₹1,50,000 annually
- Income distribution is right-skewed with few high earners
- Income alone is not a strong predictor of default — bureau behavior matters more

---

## 📂 Project Structure

**notebooks/**
- EDA.ipynb — data cleaning, feature engineering, exploratory analysis

**sql/**
- KPI_Queries.sql — overall default rate, income, credit KPIs
- Business_Analysis_queries.sql — demographic and behavioral analysis
- Advanced_Analytics.sql — risk scoring, overdue ranking, credit ratios
- validation_queries.sql — data quality checks and null handling

**Tableau/**
- Credit_Risk_Analysis.twbx — Tableau workbook

---

## Data Setup

Raw files not included due to GitHub size limits.

1. Download dataset from [Kaggle — Home Credit Default Risk](https://www.kaggle.com/c/home-credit-default-risk/data)
2. Place the following in data/raw/:
   - application_train.csv
   - bureau.csv
   - previous_application.csv
3. Run notebooks in order to generate analytics_customer_final.csv
4. Import CSV into PostgreSQL and run sql/ queries

---

## 🛠️ Tools

- Python — Pandas, data cleaning and feature engineering
- PostgreSQL + pgAdmin — data storage and SQL analysis
- Tableau Public — interactive dashboard
- JupyterLab — notebook environment
- Git — version control

---

## Author

Kumar Saksham
[GitHub](https://github.com/Saksham3124) | [Tableau Public](https://public.tableau.com/app/profile/kumar.saksham2703)
