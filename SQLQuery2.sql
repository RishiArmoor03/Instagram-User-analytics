/*Identify users who have never posted a single photo on Instagram.*/
   
SELECT u.username as users_wiht_zero_posts
FROM users u
LEFT JOIN photos p ON u.id = p.user_id
WHERE p.user_id IS NULL;
