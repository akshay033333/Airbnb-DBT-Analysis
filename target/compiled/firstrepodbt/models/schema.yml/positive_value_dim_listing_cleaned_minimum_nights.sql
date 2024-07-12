
    SELECT
        *
    FROM
        airbnb.raw.dim_listing_cleaned
    WHERE
        minimum_nights < 1
