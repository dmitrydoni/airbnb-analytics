/*
    If there are no issues, should return an empty resultset
*/

SELECT
    *
FROM
    {{ ref('dim_listings_cleansed') }}
WHERE 
    minimum_nights < 1
LIMIT 10
