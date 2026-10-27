-- 4. Day with the highest number of transactions.

SELECT 
    CAST(date AS DATE) AS day,
    COUNT(*) AS total_transactions
FROM `workspace`.`default`.`coffee`
GROUP BY day
ORDER BY total_transactions DESC
LIMIT 1;