SELECT
    customer_name,
    item_name,
    MAX(rating_stars) AS highest_star_rating
FROM
    rating r
    JOIN customer c ON r.customer_id = c.customer_id
    JOIN item i ON r.item_id = i.item_id
GROUP BY
    customer_name,
    item_name
HAVING
    COUNT(rating_date) > 1;