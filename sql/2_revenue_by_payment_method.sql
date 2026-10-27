-- Databricks notebook source
-- 2. Revenue by payment method.
SELECT
  cash_type AS payment_method,
  ROUND(SUM(money), 2) AS revenue
FROM
  `workspace`.`default`.`coffee`
GROUP BY
  cash_type
ORDER BY
  revenue DESC;