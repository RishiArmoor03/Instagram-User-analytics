/*B*/

/*Calculate the average number of posts per user on Instagram. */

SELECT COUNT(*) / COUNT(DISTINCT user_id) AS average_posts_per_user
FROM photos;

/*Also, provide the total number of photos on Instagram divided by the total number of users.*/

SELECT COUNT(*) AS total_photos, COUNT(DISTINCT user_id) AS total_users,
       COUNT(*) / COUNT(DISTINCT user_id) AS photos_per_user_ratio
FROM photos;


