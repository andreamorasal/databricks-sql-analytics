-- Databricks notebook source
-- 1. Top 5 best-selling coffee types by revenue.

SELECT 
    coffee_name,
    ROUND(SUM(money),2) as revenue
FROM `workspace`.`default`.`coffee`
GROUP BY coffee_name
ORDER BY revenue DESC
LIMIT 5;