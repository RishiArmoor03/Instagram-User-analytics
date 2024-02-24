/* The team has organized a contest where the user with the most likes on a single photo wins.
Determine the winner of the contest and provide their details to the team.*/

SELECT TOP 1 U.id AS winner_user_id, U.username AS winner_username, P.id AS photo_id, P.image_url, COUNT(L.user_id) AS Total_likes
FROM users U
INNER JOIN photos P ON U.id = P.user_id
INNER JOIN likes L ON p.id = L.photo_id
GROUP BY U.id, U.username, P.id, P.image_url
ORDER BY COUNT(L.user_id) DESC;