-- Databricks notebook source
-- DBTITLE 1,Monthly best-selling coffee by revenue
-- 5. Ranking coffee types by revenue within each month.

WITH monthly_ranking AS (
    SELECT
        DATE_FORMAT(date, 'yyyy-MM') AS month,
        coffee_name,
        ROUND(SUM(money),2) AS revenue,
        RANK() OVER (
            PARTITION BY DATE_FORMAT(date, 'yyyy-MM')
            ORDER BY SUM(money) DESC) AS rank 
FROM `workspace`.`default`.`coffee`
GROUP BY 
    DATE_FORMAT(date, 'yyyy-MM'), 
    coffee_name
)
SELECT
    month,
    coffee_name,
    revenue,
    rank
FROM monthly_ranking
WHERE rank = 1
ORDER BY month;