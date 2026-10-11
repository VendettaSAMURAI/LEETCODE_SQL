SELECT w1.id
FROM Weather AS W1
LEFT JOIN Weather AS W2
    ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature 