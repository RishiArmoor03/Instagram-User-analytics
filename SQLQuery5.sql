/*Determine the day of the week when most users register on Instagram*/
SELECT DATEPART(WEEKDAY, created_at) AS registration_day_of_week, COUNT(*) AS registration_count
FROM users
GROUP BY DATEPART(WEEKDAY, created_at)
ORDER BY COUNT(*) DESC;
