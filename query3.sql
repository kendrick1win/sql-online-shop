SELECT
    item_name,
    MAX(rating_date) AS most_recent_rating_date,
    ROUND(AVG(rating_stars), 2) AS average_star_rating
FROM
    item
    JOIN rating ON item.item_id = rating.item_id
GROUP BY
    item_name
ORDER BY
    average_star_rating DESC;