/*Identify and suggest the top five most commonly used hashtags on the platform.*/

SELECT TOP 5 t.tag_name, COUNT(pt.tag_id) AS Total_tags
FROM photo_tags AS pt
LEFT JOIN tags AS t ON pt.tag_id = t.id
GROUP BY t.tag_name
ORDER BY COUNT(pt.tag_id) DESC;