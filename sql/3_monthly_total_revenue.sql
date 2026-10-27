-- Databricks notebook source
-- 3. Total revenue per month.

WITH monthly_revenue AS (
  SELECT 
    DATE_FORMAT(date, 'yyyy-MM') AS month,
    ROUND(SUM(money),2) AS total_revenue
  FROM `workspace`.`default`.`coffee`
  GROUP BY month
  ORDER BY month ASC
)
SELECT
  month,
  total_revenue
FROM monthly_revenue;
