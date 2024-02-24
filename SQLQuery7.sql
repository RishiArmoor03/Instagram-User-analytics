/*B*/

/*Identify users (potential bots) who have liked every single photo on the site, as this is not typically possible for a normal user.*/

SELECT user_id
FROM (
    SELECT u.id AS user_id, COUNT(p.id) AS total_photos,
           (SELECT COUNT(*) FROM photos) AS total_photos_count,
           COUNT(l.photo_id) AS total_likes
    FROM users u
    LEFT JOIN photos p ON u.id = p.user_id
    LEFT JOIN likes l ON u.id = l.user_id
    GROUP BY u.id
) AS user_likes_photos
WHERE total_photos_count = total_likes;