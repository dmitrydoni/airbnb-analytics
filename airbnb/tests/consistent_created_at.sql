/*
    If there are no issues, should return an empty resultset
*/

SELECT 
    l.listing_id,
    l.created_at 
FROM 
    {{ ref('dim_listings_cleansed') }} AS l
    JOIN {{ ref('fct_reviews') }} AS r
        ON l.listing_id = r.listing_id
WHERE 
    l.created_at >= r.review_date
