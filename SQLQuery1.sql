/* Identify the five oldest users on Instagram from the provided database.*/

SELECT TOP 5 username as oldest_users from users
ORDER BY created_at;
